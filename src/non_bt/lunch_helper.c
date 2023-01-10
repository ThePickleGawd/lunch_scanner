//===================== Method 1: =============================================
//Algorithm from N. Wirth’s book Algorithms + data structures = programs of 1976    

// Drivers
#include <inttypes.h>
#include "atm_log.h"

// Lunch stuff
#include "lunch_helper.h"
#include "lunch_manager.h"
#include "usb_hid_keys.h"

ATM_LOG_LOCAL_SETTING("lunch_helper", D);

#define ELEM_SWAP(a,b) { register int_fast16_t t=(a);(a)=(b);(b)=t; }

int get_key_code(uint8_t num)
{
    switch (num) {
        case '0': return KEY_0;
        case '1': return KEY_1;
        case '2': return KEY_2;
        case '3': return KEY_3;
        case '4': return KEY_4;
        case '5': return KEY_5;
        case '6': return KEY_6;
        case '7': return KEY_7;
        case '8': return KEY_8;
        case '9': return KEY_9;
        default: {
            ATM_LOG(E, "Error, unknown key");
            break;
        }
    }

    return -1;
}


int_fast16_t quick_select_median(int_fast16_t arr[], uint16_t n)
{
    uint16_t low, high ;
    uint16_t median;
    uint16_t middle, ll, hh;
    low = 0 ; high = n-1 ; median = (low + high) / 2;
    for (;;) {
    if (high <= low) /* One element only */
    return arr[median] ;
    if (high == low + 1) { /* Two elements only */
    if (arr[low] > arr[high])
    ELEM_SWAP(arr[low], arr[high]) ;
    return arr[median] ;
    }
    /* Find median of low, middle and high items; swap into position low */
    middle = (low + high) / 2;
    if (arr[middle] > arr[high])
    ELEM_SWAP(arr[middle], arr[high]) ;
    if (arr[low] > arr[high])
    ELEM_SWAP(arr[low], arr[high]) ;
    if (arr[middle] > arr[low])
    ELEM_SWAP(arr[middle], arr[low]) ;
    /* Swap low item (now in position middle) into position (low+1) */
    ELEM_SWAP(arr[middle], arr[low+1]) ;
    /* Nibble from each end towards middle, swapping items when stuck */
    ll = low + 1;
    hh = high;
    for (;;) {
    do ll++; while (arr[low] > arr[ll]) ;
    do hh--; while (arr[hh] > arr[low]) ;
    if (hh < ll)
    break;
    ELEM_SWAP(arr[ll], arr[hh]) ;
    }
    /* Swap middle item (in position low) back into correct position */
    ELEM_SWAP(arr[low], arr[hh]) ;
    /* Re-set active partition */
    if (hh <= median)
    low = ll;
    if (hh >= median)
    high = hh - 1;
    }
    return arr[median] ;
}

int_fast16_t get_rssi_median(rssi_array_t *rssi_arr)
{
    return quick_select_median(rssi_arr->array, rssi_arr->size);
}
