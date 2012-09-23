.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final CMD_CANCEL_WPS:I = 0xc

.field public static final CMD_CONNECT_NETWORK:I = 0x1

.field public static final CMD_DISABLE_NETWORK:I = 0x5

.field public static final CMD_ENABLE_TRAFFIC_STATS_POLL:I = 0x15

.field public static final CMD_FORGET_NETWORK:I = 0x2

.field public static final CMD_SAVE_NETWORK:I = 0x3

.field public static final CMD_START_WPS:I = 0x4

.field public static final CMD_TRAFFIC_STATS_POLL:I = 0x16

.field public static final CMD_WPS_COMPLETED:I = 0xb

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final ERROR_ACTION:Ljava/lang/String; = "android.net.wifi.ERROR"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_WPS:Ljava/lang/String; = "wps_event"

.field public static final GET_WPS_EVENT_ACTION:Ljava/lang/String; = "android.net.wifi.GET_WPS_EVENT"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SHOW_AP_LIST_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_AP_LIST_DIALOG"

.field public static final SHOW_EAP_MESSAGE_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_EAP_MESSAGE_DIALOG"

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field public static final SUPPLICANT_WAPI_EVENT:Ljava/lang/String; = "android.net.wifi.supplicant.WAPI_EVENT"

.field public static final WAPI_EVENT_AUTH_FAIL_CODE:I = 0x10

.field public static final WAPI_EVENT_CERT_FAIL_CODE:I = 0x11

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WIFI_WPS_FAIL:I = 0x2

.field public static final WIFI_WPS_OVERLAP:I = 0x3

.field public static final WIFI_WPS_SUCCESS:I = 0x1

.field public static final WIFI_WPS_TIMEOUT:I = 0x4

.field public static final WIFI_WPS_UNDEFINE:I = 0x5

.field public static final WPS_OVERLAP_ERROR:I = 0x1


# instance fields
.field private mActiveLockCount:I

.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .registers 4
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 533
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 534
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 535
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 536
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$020(Landroid/net/wifi/WifiManager;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 618
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 620
    :goto_6
    return v1

    .line 619
    :catch_7
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static calculateSignalLevel(II)I
    .registers 5
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    .line 956
    const/16 v2, -0x64

    if-gt p0, v2, :cond_6

    .line 957
    const/4 v2, 0x0

    .line 963
    :goto_5
    return v2

    .line 958
    :cond_6
    const/16 v2, -0x37

    if-lt p0, v2, :cond_d

    .line 959
    add-int/lit8 v2, p1, -0x1

    goto :goto_5

    .line 961
    :cond_d
    const/high16 v0, 0x4234

    .line 962
    .local v0, inputRange:F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 963
    .local v1, outputRange:F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_5
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 977
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 579
    if-nez p1, :cond_4

    .line 583
    :goto_3
    return v0

    .line 582
    :cond_4
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 583
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_3
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .registers 4
    .parameter "bssid"

    .prologue
    .line 1110
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1111
    const/4 v1, 0x1

    .line 1113
    :goto_6
    return v1

    .line 1112
    :catch_7
    move-exception v0

    .line 1113
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "srcContext"
    .parameter "srcHandler"

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 1169
    return-void
.end method

.method public clearBlacklist()Z
    .registers 3

    .prologue
    .line 1127
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1128
    const/4 v1, 0x1

    .line 1130
    :goto_6
    return v1

    .line 1129
    :catch_7
    move-exception v0

    .line 1130
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public connectNetwork(I)V
    .registers 4
    .parameter "networkId"

    .prologue
    .line 1203
    if-gez p1, :cond_3

    .line 1207
    :goto_2
    return-void

    .line 1206
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_2
.end method

.method public connectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .parameter "config"

    .prologue
    .line 1184
    if-nez p1, :cond_3

    .line 1190
    :goto_2
    return-void

    .line 1188
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1666
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1632
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1648
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disableNetwork(II)V
    .registers 5
    .parameter "netId"
    .parameter "reason"

    .prologue
    .line 685
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 686
    return-void
.end method

.method public disableNetwork(I)Z
    .registers 5
    .parameter "netId"

    .prologue
    const/4 v1, 0x0

    .line 669
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_a

    move-result v1

    .line 673
    :goto_7
    return v1

    .line 670
    :catch_8
    move-exception v0

    .line 671
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_7

    .line 672
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_a
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 696
    const/4 v1, 0x1

    .line 698
    :goto_6
    return v1

    .line 697
    :catch_7
    move-exception v0

    .line 698
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 654
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 656
    :goto_6
    return v1

    .line 655
    :catch_7
    move-exception v0

    .line 656
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public forgetNetwork(I)V
    .registers 5
    .parameter "netId"

    .prologue
    .line 1245
    if-gez p1, :cond_3

    .line 1252
    :goto_2
    return-void

    .line 1250
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1297
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1299
    :goto_6
    return-object v1

    .line 1298
    :catch_7
    move-exception v0

    .line 1299
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 560
    :goto_6
    return-object v1

    .line 559
    :catch_7
    move-exception v0

    .line 560
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 787
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 789
    :goto_6
    return-object v1

    .line 788
    :catch_7
    move-exception v0

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1417
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCountryRev()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1419
    :goto_6
    return-object v1

    .line 1418
    :catch_7
    move-exception v0

    .line 1419
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 887
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 889
    :goto_6
    return-object v1

    .line 888
    :catch_7
    move-exception v0

    .line 889
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFrequencyBand()I
    .registers 3

    .prologue
    .line 861
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 863
    :goto_6
    return v1

    .line 862
    :catch_7
    move-exception v0

    .line 863
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    .line 1285
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getMessenger()Landroid/os/Messenger;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1287
    :goto_6
    return-object v1

    .line 1286
    :catch_7
    move-exception v0

    .line 1287
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRoamBand()I
    .registers 3

    .prologue
    .line 1394
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamBand()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1396
    :goto_6
    return v1

    .line 1395
    :catch_7
    move-exception v0

    .line 1396
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRoamDelta()I
    .registers 3

    .prologue
    .line 1346
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamDelta()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1348
    :goto_6
    return v1

    .line 1347
    :catch_7
    move-exception v0

    .line 1348
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRoamScanPeriod()I
    .registers 3

    .prologue
    .line 1370
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamScanPeriod()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1372
    :goto_6
    return v1

    .line 1371
    :catch_7
    move-exception v0

    .line 1372
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRoamTrigger()I
    .registers 3

    .prologue
    .line 1322
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamTrigger()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1324
    :goto_6
    return v1

    .line 1323
    :catch_7
    move-exception v0

    .line 1324
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 801
    :goto_6
    return-object v1

    .line 800
    :catch_7
    move-exception v0

    .line 801
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .prologue
    .line 1037
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1039
    :goto_6
    return-object v1

    .line 1038
    :catch_7
    move-exception v0

    .line 1039
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApState()I
    .registers 3

    .prologue
    .line 1012
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1014
    :goto_6
    return v1

    .line 1013
    :catch_7
    move-exception v0

    .line 1014
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_6
.end method

.method public getWifiState()I
    .registers 3

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 932
    :goto_6
    return v1

    .line 931
    :catch_7
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public initializeMulticastFiltering()Z
    .registers 3

    .prologue
    .line 1857
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1858
    const/4 v1, 0x1

    .line 1860
    :goto_6
    return v1

    .line 1859
    :catch_7
    move-exception v0

    .line 1860
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDualBandSupported()Z
    .registers 3

    .prologue
    .line 874
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 876
    :goto_6
    return v1

    .line 875
    :catch_7
    move-exception v0

    .line 876
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1845
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1847
    :goto_6
    return v1

    .line 1846
    :catch_7
    move-exception v0

    .line 1847
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isWifiApEnabled()Z
    .registers 3

    .prologue
    .line 1026
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isWifiEnabled()Z
    .registers 3

    .prologue
    .line 942
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public pingSupplicant()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 738
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_6

    .line 743
    :goto_5
    return v1

    .line 741
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 742
    :catch_d
    move-exception v0

    .line 743
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 725
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 726
    const/4 v1, 0x1

    .line 728
    :goto_6
    return v1

    .line 727
    :catch_7
    move-exception v0

    .line 728
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 710
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 711
    const/4 v1, 0x1

    .line 713
    :goto_6
    return v1

    .line 712
    :catch_7
    move-exception v0

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 636
    :goto_6
    return v1

    .line 635
    :catch_7
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveConfiguration()Z
    .registers 3

    .prologue
    .line 816
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 818
    :goto_6
    return v1

    .line 817
    :catch_7
    move-exception v0

    .line 818
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .parameter "config"

    .prologue
    .line 1225
    if-nez p1, :cond_3

    .line 1232
    :goto_2
    return-void

    .line 1230
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 4
    .parameter "country"
    .parameter "persist"

    .prologue
    .line 831
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 833
    :goto_5
    return-void

    .line 832
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 4
    .parameter "countryRev"

    .prologue
    .line 1406
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setCountryRev(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1408
    :goto_6
    return v1

    .line 1407
    :catch_7
    move-exception v0

    .line 1408
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setEnableNoApConnectionEvent(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1866
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setEnableNoApConnectionEvent(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1869
    :goto_5
    return-void

    .line 1867
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setFrequencyBand(IZ)V
    .registers 4
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 846
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 848
    :goto_5
    return-void

    .line 847
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRoamBand(I)Z
    .registers 4
    .parameter "roamBand"

    .prologue
    .line 1382
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamBand(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1384
    :goto_6
    return v1

    .line 1383
    :catch_7
    move-exception v0

    .line 1384
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamDelta(I)Z
    .registers 4
    .parameter "roamDelta"

    .prologue
    .line 1334
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamDelta(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1336
    :goto_6
    return v1

    .line 1335
    :catch_7
    move-exception v0

    .line 1336
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamScanPeriod(I)Z
    .registers 4
    .parameter "roamScanPeriod"

    .prologue
    .line 1358
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamScanPeriod(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1360
    :goto_6
    return v1

    .line 1359
    :catch_7
    move-exception v0

    .line 1360
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamTrigger(I)Z
    .registers 4
    .parameter "roamTrigger"

    .prologue
    .line 1310
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamTrigger(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1312
    :goto_6
    return v1

    .line 1311
    :catch_7
    move-exception v0

    .line 1312
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .parameter "wifiConfig"

    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1052
    const/4 v1, 0x1

    .line 1054
    :goto_6
    return v1

    .line 1053
    :catch_7
    move-exception v0

    .line 1054
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 5
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 994
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 995
    const/4 v1, 0x1

    .line 997
    :goto_6
    return v1

    .line 996
    :catch_7
    move-exception v0

    .line 997
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 902
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 904
    :goto_6
    return v1

    .line 903
    :catch_7
    move-exception v0

    .line 904
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public shutdown()Z
    .registers 3

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->shutdown()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 917
    :goto_6
    return v1

    .line 916
    :catch_7
    move-exception v0

    .line 917
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startScan()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 755
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 756
    const/4 v1, 0x1

    .line 758
    :goto_8
    return v1

    .line 757
    :catch_9
    move-exception v0

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_8
.end method

.method public startScanActive()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 774
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    .line 777
    :goto_7
    return v1

    .line 776
    :catch_8
    move-exception v0

    .line 777
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public startWifi()Z
    .registers 3

    .prologue
    .line 1073
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1074
    const/4 v1, 0x1

    .line 1076
    :goto_6
    return v1

    .line 1075
    :catch_7
    move-exception v0

    .line 1076
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 1261
    if-nez p1, :cond_3

    .line 1265
    :goto_2
    return-void

    .line 1264
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public stopWifi()Z
    .registers 3

    .prologue
    .line 1093
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1094
    const/4 v1, 0x1

    .line 1096
    :goto_6
    return v1

    .line 1095
    :catch_7
    move-exception v0

    .line 1096
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 602
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_8

    .line 603
    :cond_6
    const/4 v0, -0x1

    .line 605
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_7
.end method

.method public wpsCommandCancel()V
    .registers 3

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1274
    return-void
.end method
