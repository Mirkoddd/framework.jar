.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final MAX_NETWORK_TYPE:I = 0x12

.field public static final MAX_RADIO_TYPE:I = 0xd

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SECURITY_POLICY:I = 0x14

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_ADMIN:I = 0x11

.field public static final TYPE_MOBILE_BIP:I = 0x12

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_CMDM:I = 0xe

.field public static final TYPE_MOBILE_CMMAIL:I = 0xf

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_MOBILE_WAP:I = 0x10

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6


# instance fields
.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 646
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 647
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 648
    return-void
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 347
    packed-switch p0, :pswitch_data_36

    .line 379
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 349
    :pswitch_8
    const-string v0, "MOBILE"

    goto :goto_7

    .line 351
    :pswitch_b
    const-string v0, "WIFI"

    goto :goto_7

    .line 353
    :pswitch_e
    const-string v0, "MOBILE_MMS"

    goto :goto_7

    .line 355
    :pswitch_11
    const-string v0, "MOBILE_SUPL"

    goto :goto_7

    .line 357
    :pswitch_14
    const-string v0, "MOBILE_DUN"

    goto :goto_7

    .line 359
    :pswitch_17
    const-string v0, "MOBILE_HIPRI"

    goto :goto_7

    .line 361
    :pswitch_1a
    const-string v0, "WIMAX"

    goto :goto_7

    .line 363
    :pswitch_1d
    const-string v0, "BLUETOOTH"

    goto :goto_7

    .line 365
    :pswitch_20
    const-string v0, "DUMMY"

    goto :goto_7

    .line 367
    :pswitch_23
    const-string v0, "ETHERNET"

    goto :goto_7

    .line 369
    :pswitch_26
    const-string v0, "MOBILE_FOTA"

    goto :goto_7

    .line 371
    :pswitch_29
    const-string v0, "MOBILE_IMS"

    goto :goto_7

    .line 373
    :pswitch_2c
    const-string v0, "MOBILE_CBS"

    goto :goto_7

    .line 375
    :pswitch_2f
    const-string v0, "WIFI_P2P"

    goto :goto_7

    .line 377
    :pswitch_32
    const-string v0, "MOBILE_BIP"

    goto :goto_7

    .line 347
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_32
    .end packed-switch
.end method

.method public static isNetworkTypeMobile(I)Z
    .registers 2
    .parameter "networkType"

    .prologue
    .line 385
    packed-switch p0, :pswitch_data_8

    .line 397
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 395
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 385
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .registers 3
    .parameter "networkType"

    .prologue
    const/16 v1, 0x12

    const/4 v0, 0x1

    .line 339
    if-ne p0, v1, :cond_6

    .line 342
    :cond_5
    :goto_5
    return v0

    :cond_6
    if-ltz p0, :cond_a

    if-le p0, v1, :cond_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 452
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 454
    :goto_6
    return-object v1

    .line 453
    :catch_7
    move-exception v0

    .line 454
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 418
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 420
    :goto_6
    return-object v1

    .line 419
    :catch_7
    move-exception v0

    .line 420
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "uid"

    .prologue
    .line 427
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 429
    :goto_6
    return-object v1

    .line 428
    :catch_7
    move-exception v0

    .line 429
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 3

    .prologue
    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 611
    :goto_6
    return-object v1

    .line 610
    :catch_7
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 445
    :goto_6
    return-object v1

    .line 444
    :catch_7
    move-exception v0

    .line 445
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBackgroundDataSetting()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .registers 3

    .prologue
    .line 848
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 850
    :goto_6
    return-object v1

    .line 849
    :catch_7
    move-exception v0

    .line 850
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 4
    .parameter "iface"

    .prologue
    .line 798
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 800
    :goto_6
    return v1

    .line 799
    :catch_7
    move-exception v0

    .line 800
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 4
    .parameter "networkType"

    .prologue
    .line 461
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 463
    :goto_6
    return-object v1

    .line 462
    :catch_7
    move-exception v0

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMobileDataEnabled()Z
    .registers 3

    .prologue
    .line 623
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 625
    :goto_6
    return v1

    .line 624
    :catch_7
    move-exception v0

    .line 625
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "networkType"

    .prologue
    .line 435
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 437
    :goto_6
    return-object v1

    .line 436
    :catch_7
    move-exception v0

    .line 437
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkPreference()I
    .registers 3

    .prologue
    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 412
    :goto_6
    return v1

    .line 411
    :catch_7
    move-exception v0

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .registers 3

    .prologue
    .line 860
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 862
    :goto_6
    return-object v1

    .line 861
    :catch_7
    move-exception v0

    .line 862
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 747
    :goto_6
    return-object v1

    .line 746
    :catch_7
    move-exception v0

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 655
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 657
    :goto_6
    return-object v1

    .line 656
    :catch_7
    move-exception v0

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 723
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 725
    :goto_6
    return-object v1

    .line 724
    :catch_7
    move-exception v0

    .line 725
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 734
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 736
    :goto_6
    return-object v1

    .line 735
    :catch_7
    move-exception v0

    .line 736
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 666
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 668
    :goto_6
    return-object v1

    .line 667
    :catch_7
    move-exception v0

    .line 668
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 677
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 679
    :goto_6
    return-object v1

    .line 678
    :catch_7
    move-exception v0

    .line 679
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public isNetworkSupported(I)Z
    .registers 3
    .parameter "networkType"

    .prologue
    .line 891
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 893
    :goto_6
    return v0

    .line 892
    :catch_7
    move-exception v0

    .line 893
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTetheringSupported()Z
    .registers 3

    .prologue
    .line 712
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 714
    :goto_6
    return v1

    .line 713
    :catch_7
    move-exception v0

    .line 714
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reportInetCondition(II)V
    .registers 4
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 826
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 829
    :goto_5
    return-void

    .line 827
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)Z
    .registers 4
    .parameter "forWhom"

    .prologue
    .line 812
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 813
    const/4 v1, 0x1

    .line 815
    :goto_6
    return v1

    .line 814
    :catch_7
    move-exception v0

    .line 815
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public requestRouteToHost(II)Z
    .registers 5
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 534
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 536
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_8

    .line 537
    const/4 v1, 0x0

    .line 540
    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    goto :goto_7
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .registers 6
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 554
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 556
    .local v0, address:[B
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v0}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v2

    .line 558
    :goto_a
    return v2

    .line 557
    :catch_b
    move-exception v1

    .line 558
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public setBackgroundDataSetting(Z)V
    .registers 2
    .parameter "allowBackgroundData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    return-void
.end method

.method public setDataDependency(IZ)V
    .registers 4
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 873
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 876
    :goto_5
    return-void

    .line 874
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 837
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 840
    :goto_5
    return-void

    .line 838
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMobileDataEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 638
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 641
    :goto_5
    return-void

    .line 639
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setNetworkPreference(I)V
    .registers 3
    .parameter "preference"

    .prologue
    .line 403
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 406
    :goto_5
    return-void

    .line 404
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRadio(IZ)Z
    .registers 5
    .parameter "networkType"
    .parameter "turnOn"

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 481
    :goto_6
    return v1

    .line 480
    :catch_7
    move-exception v0

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRadios(Z)Z
    .registers 4
    .parameter "turnOn"

    .prologue
    .line 470
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 472
    :goto_6
    return v1

    .line 471
    :catch_7
    move-exception v0

    .line 472
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setUsbTethering(Z)I
    .registers 4
    .parameter "enable"

    .prologue
    .line 756
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 758
    :goto_6
    return v1

    .line 757
    :catch_7
    move-exception v0

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .registers 6
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 498
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 501
    :goto_b
    return v1

    .line 500
    :catch_c
    move-exception v0

    .line 501
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 5
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 518
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 520
    :goto_6
    return v1

    .line 519
    :catch_7
    move-exception v0

    .line 520
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public tether(Ljava/lang/String;)I
    .registers 4
    .parameter "iface"

    .prologue
    .line 689
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 691
    :goto_6
    return v1

    .line 690
    :catch_7
    move-exception v0

    .line 691
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public untether(Ljava/lang/String;)I
    .registers 4
    .parameter "iface"

    .prologue
    .line 701
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 703
    :goto_6
    return v1

    .line 702
    :catch_7
    move-exception v0

    .line 703
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method
