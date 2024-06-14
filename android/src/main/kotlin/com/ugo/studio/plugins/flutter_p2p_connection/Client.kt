package com.ugo.studio.plugins.flutter_p2p_connection

data class Client(
    // from https://developer.android.com/reference/android/net/wifi/p2p/WifiP2pDevice
    val deviceName: String,
    val deviceAddress: String,
    val primaryDeviceType: String?,
    val secondaryDeviceType: String?,
    val status: Int,
    // methods called on object before sending through channel
    val isGroupOwner: Boolean,
    val isServiceDiscoveryCapable: Boolean,
    val wpsDisplaySupported: Boolean,
    val wpsKeypadSupported: Boolean,
    val wpsPbcSupported: Boolean,
)
