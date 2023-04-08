# LunchTrak Scanner

This code is for the "main" LunchTrak scanner. It will be connected to the lunch computer via Bluetooth and will actively scan for LunchTrak beacons. When it detects a beacon with an RSSI above the threshold, it will "type" the number into the computer through HOGP (HID over GATT Protocol)

## To Pair

1. Go to Bluetooth settings on PC/Mac/Linux and "Add a Bluetooth Device".
2. Power on scanner. If already paired, hold the PAIR button (P10) for 3 seconds to reset pairing info
3. Look for and pair "LunchTrak Scanner". It may also appear as a generic "Keyboard" on some devices.

## State Diagram

### Main State Machine

```mermaid
stateDiagram
    [*] --> S_BOOTED
    S_BOOTED --> S_INITING: OP_INITING
    S_IDLE --> S_RECONNING: OP_RECONNING
    S_IDLE --> S_PAIRING: OP_PAIRING
    S_INITING --> S_IDLE: OP_INIT_DONE
    S_INITING --> S_RECONNING: OP_RECONNING
    S_INITING --> S_PAIRING: OP_PAIRING
    S_RECONNING --> S_CONNECTED: OP_CONNECTED
    S_RECONNING --> S_IDLE: OP_RECONN_FAIL
    S_RECONNING --> S_IDLE: OP_ADV_STOPPED
    S_PAIRING --> S_PAIRING: OP_CONNECTED
    S_PAIRING --> S_IDLE: OP_DISCONNED
    S_PAIRING --> S_CONNECTED: OP_PAIR_FAIL
    S_CONNECTED --> S_CONNECTED: OP_PAIR_FAIL
    S_IDLE --> S_IDLE: OP_DISCONNED
    S_IDLE --> S_IDLE: OP_PAIR_FAIL
    S_CONNECTED --> S_CONNECTED: OP_PAIR_SUCCESS
    S_PAIRING --> S_CONNECTED: OP_PAIR_SUCCESS
    S_PAIRING --> S_IDLE: OP_ADV_STOPPED
    S_CONNECTED --> S_HID_READY: OP_HID_READY
    S_CONNECTED --> S_IDLE: OP_DISCONNED
    S_CONNECTED --> S_DISCONNING: OP_DISCONNING
    S_HID_READY --> S_DISCONNING: OP_DISCONNING
    S_HID_READY --> S_IDLE: OP_DISCONNED
    S_DISCONNING --> S_IDLE: OP_DISCONNED
    S_HID_READY --> S_SCANNING: OP_SCAN_STARTED
    S_SCANNING --> S_IDLE: OP_DISCONNED
    S_SCANNING --> S_HID_READY: OP_SCAN_TIMEOUT
```

### GAP State Machine

```mermaid
stateDiagram
    GAP_S_INIT --> GAP_S_IDLE: GAP_OP_INITED
    GAP_S_INIT --> GAP_S_ADV0ING: GAP_OP_ADV0ING
    GAP_S_INIT --> GAP_S_ADV1ING: GAP_OP_ADV1ING
    GAP_S_IDLE --> GAP_S_ADV0ING: GAP_OP_ADV0ING
    GAP_S_IDLE --> GAP_S_ADV1ING: GAP_OP_ADV1ING
    GAP_S_ADV0ING --> GAP_S_ADV0ING: GAP_OP_INITED
    GAP_S_ADV1ING --> GAP_S_ADV1ING: GAP_OP_INITED
    GAP_S_ADV0ING --> GAP_S_IDLE: GAP_OP_ADV_STOP_TOUT
    GAP_S_ADV1ING --> GAP_S_IDLE: GAP_OP_ADV_STOP_TOUT
    GAP_S_ADV1ING --> GAP_S_CONNECTED: GAP_OP_CONNECTED
    GAP_S_ADV0ING --> GAP_S_CONNECTED: GAP_OP_CONNECTED
    GAP_S_ADV1ING --> GAP_S_ADV_STOPPING: GAP_OP_ADV_STOPPING
    GAP_S_ADV0ING --> GAP_S_ADV_STOPPING: GAP_OP_ADV_STOPPING
    GAP_S_ADV_STOPPING --> GAP_S_IDLE: GAP_OP_ADV_STOP
    GAP_S_CONNECTED --> GAP_S_IDLE: GAP_OP_DISCONNECTED
    GAP_S_CONNECTED --> GAP_S_CONNECTED: GAP_OP_ADV_STOP
    GAP_S_CONNECTED --> GAP_S_STARTING_SCAN: GAP_OP_START_SCAN
    GAP_S_STARTING_SCAN --> GAP_S_SCANNING: GAP_OP_SCAN_STARTED
    GAP_S_SCANNING --> GAP_S_IDLE: GAP_OP_DISCONNECTED
    GAP_S_SCANNING --> GAP_S_CONNECTED: GAP_OP_SCAN_TIMEOUT
```

# Notes and TODOs

## TODO:

- Work with peripheral scanner
- Think about state machine and how it might prevent multiple scanning at a time
- Is there something we can do with the knowledge of time interval for proximity?
