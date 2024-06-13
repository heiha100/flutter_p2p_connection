package com.ugo.studio.plugins.flutter_p2p_connection

data class GroupInfo(
    val isGroupOwner: Boolean,
    val passPhrase: String?,
    val groupNetworkName: String,
    val clients: List<Any>,
)
