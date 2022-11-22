/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "semphr.h"

/* Freescale includes. */
#include "fsl_device_registers.h"
#include "fsl_debug_console.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/

const TickType_t xDelay1000ms = pdMS_TO_TICKS( 1000 );
SemaphoreHandle_t xMutex;

/*******************************************************************************
 * Prototypess
 ******************************************************************************/
static void write_task_1(void *pvParameters);
static void write_task_2(void *pvParameters);

/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * @brief Main function
 */
int main(void)
{
    xMutex = xSemaphoreCreateMutex();

    BOARD_InitPins();
    BOARD_BootClockRUN();
    BOARD_InitDebugConsole();
    if (xTaskCreate(write_task_1, "WRITE_TASK_1", configMINIMAL_STACK_SIZE + 128, NULL, tskIDLE_PRIORITY + 1, NULL) !=
        pdPASS)
    {
        PRINTF("Task creation failed!.\r\n");
        while (1)
            ;
    }
    if (xTaskCreate(write_task_2, "WRITE_TASK_2", configMINIMAL_STACK_SIZE + 128, NULL, tskIDLE_PRIORITY + 2, NULL) !=
        pdPASS)
    {
        PRINTF("Task creation failed!.\r\n");
        while (1)
            ;
    }
    /* Start scheduling. */
    vTaskStartScheduler();
    for (;;)
        ;
}

/*!
 * @brief Write Task 1 function
 */
static void write_task_1(void *pvParameters)
{
    while (1)
    {
    	PRINTF("Task 1 starts running\r\n");
        if (xSemaphoreTake(xMutex, portMAX_DELAY) != pdTRUE)
        {
            PRINTF("Failed to take semaphore.\r\n");
        }
        PRINTF("Task 1 took mutex\r\n");

        uint32_t i;
        for (i = 0; i < 20000000; ++i) {}

        PRINTF("Task 1 stops\r\n\n");
        xSemaphoreGive(xMutex);
    }
}

/*!
 * @brief Write Task 2 function
 */
static void write_task_2(void *pvParameters)
{
    while (1)
    {
    	PRINTF("Task 2 starts running\r\n");
        if (xSemaphoreTake(xMutex, portMAX_DELAY) != pdTRUE)
        {
            PRINTF("Failed to take semaphore.\r\n");
        }
        PRINTF("Task 2 took mutex\r\n");
        uint32_t i;
        for (i = 0; i < 20000000; ++i) {}

        PRINTF("Task 2 stops\r\n\n");
        xSemaphoreGive(xMutex);
        vTaskDelay(xDelay1000ms);
    }
}
