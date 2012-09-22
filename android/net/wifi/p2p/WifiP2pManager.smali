.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$StringResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final CANCEL_CONNECT:I = 0x2200d

.field public static final CANCEL_CONNECT_FAILED:I = 0x2200e

.field public static final CANCEL_CONNECT_SUCCEEDED:I = 0x2200f

.field public static final CONNECT:I = 0x2200a

.field public static final CONNECT_FAILED:I = 0x2200b

.field public static final CONNECT_INVITE_LIST:I = 0x22050

.field public static final CONNECT_SUCCEEDED:I = 0x2200c

.field public static final CREATE_GROUP:I = 0x22010

.field public static final CREATE_GROUP_FAILED:I = 0x22011

.field public static final CREATE_GROUP_SUCCEEDED:I = 0x22012

.field public static final DISABLE_P2P:I = 0x22004

.field public static final DISABLE_P2P_FAILED:I = 0x22005

.field public static final DISABLE_P2P_SUCCEEDED:I = 0x22006

.field public static final DISCOVER_PEERS:I = 0x22007

.field public static final DISCOVER_PEERS_FAILED:I = 0x22008

.field public static final DISCOVER_PEERS_SUCCEEDED:I = 0x22009

.field public static final DISCOVER_PEERS_WITH_FLUSH:I = 0x22032

.field public static final ENABLE_P2P:I = 0x22001

.field public static final ENABLE_P2P_FAILED:I = 0x22002

.field public static final ENABLE_P2P_SUCCEEDED:I = 0x22003

.field public static final ERROR:I = 0x0

.field public static final EXTRA_CONNECTED_DEV_ADDR:Ljava/lang/String; = "connectedDevAddress"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final EXTRA_WIFI_P2P_GROUP_INFO:Ljava/lang/String; = "wifiP2pGroupInfo"

.field public static final EXTRA_WIFI_P2P_INFO:Ljava/lang/String; = "wifiP2pInfo"

.field public static final EXTRA_WIFI_P2P_PEER_STATUS:Ljava/lang/String; = "wifiP2pPeerStatus"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_p2p_state"

.field public static final P2P_LISTEN:I = 0x22035

.field public static final P2P_UNSUPPORTED:I = 0x1

.field public static final REMOVE_GROUP:I = 0x22013

.field public static final REMOVE_GROUP_FAILED:I = 0x22014

.field public static final REMOVE_GROUP_SUCCEEDED:I = 0x22015

.field public static final REQUEST_CONNECTION_INFO:I = 0x22018

.field public static final REQUEST_CUSTOM_STRING:I = 0x2201c

.field public static final REQUEST_GROUP_INFO:I = 0x2201a

.field public static final REQUEST_NFC_CONNECT:I = 0x22064

.field public static final REQUEST_PEERS:I = 0x22016

.field public static final RESPONSE_CONNECTION_INFO:I = 0x22019

.field public static final RESPONSE_CUSTOM_STRING:I = 0x2201d

.field public static final RESPONSE_GROUP_INFO:I = 0x2201b

.field public static final RESPONSE_PEERS:I = 0x22017

.field public static final SET_DEVICE_NAME:I = 0x22034

.field public static final SET_P2P_TIMER:I = 0x22036

.field public static final STOP_DISCOVER_PEERS:I = 0x22033

.field private static final TAG:Ljava/lang/String; = "WifiP2pManager"

.field public static final WIFI_P2P_CONNECTION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

.field public static final WIFI_P2P_PEERS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PEERS_CHANGED"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x2

.field public static final WIFI_P2P_THIS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.THIS_DEVICE_CHANGED"


# instance fields
.field mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 300
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 302
    return-void
.end method


# virtual methods
.method public cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 610
    if-nez p1, :cond_3

    .line 612
    :goto_2
    return-void

    .line 611
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2200d

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 589
    if-nez p1, :cond_3

    .line 591
    :goto_2
    return-void

    .line 590
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2200a

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .parameter "c"
    .parameter "configs"
    .parameter "listener"

    .prologue
    .line 594
    if-nez p1, :cond_3

    .line 596
    :goto_2
    return-void

    .line 595
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22050

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2
.end method

.method public createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 634
    if-nez p1, :cond_3

    .line 636
    :goto_2
    return-void

    .line 635
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22010

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 523
    if-nez p1, :cond_3

    .line 525
    :goto_2
    return-void

    .line 524
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22004

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .parameter "c"
    .parameter "timeout"
    .parameter "listener"

    .prologue
    .line 552
    if-nez p1, :cond_3

    .line 554
    :goto_2
    return-void

    .line 553
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22007

    invoke-virtual {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 547
    if-nez p1, :cond_3

    .line 549
    :goto_2
    return-void

    .line 548
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22007

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .parameter "c"
    .parameter "timeout"
    .parameter "listener"

    .prologue
    .line 557
    if-nez p1, :cond_3

    .line 559
    :goto_2
    return-void

    .line 558
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22032

    invoke-virtual {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 513
    if-nez p1, :cond_3

    .line 515
    :goto_2
    return-void

    .line 514
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger()Landroid/os/Messenger;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 717
    :goto_6
    return-object v1

    .line 716
    :catch_7
    move-exception v0

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 9
    .parameter "srcContext"
    .parameter "srcLooper"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 496
    .local v1, messenger:Landroid/os/Messenger;
    if-nez v1, :cond_9

    move-object v0, v2

    .line 503
    :cond_8
    :goto_8
    return-object v0

    .line 498
    :cond_9
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V

    .line 499
    .local v0, c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v2

    .line 503
    goto :goto_8
.end method

.method public removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 650
    if-nez p1, :cond_3

    .line 652
    :goto_2
    return-void

    .line 651
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22013

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 672
    if-nez p1, :cond_3

    .line 674
    :goto_2
    return-void

    .line 673
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22018

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 683
    if-nez p1, :cond_3

    .line 685
    :goto_2
    return-void

    .line 684
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2201a

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 693
    if-nez p1, :cond_3

    .line 695
    :goto_2
    return-void

    .line 694
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22035

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 661
    if-nez p1, :cond_3

    .line 663
    :goto_2
    return-void

    .line 662
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22016

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method

.method public sendCustomStringCommand(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$StringResponseListener;)V
    .registers 9
    .parameter "c"
    .parameter "command"
    .parameter "listener"

    .prologue
    .line 721
    if-nez p1, :cond_3

    .line 727
    :cond_2
    :goto_2
    return-void

    .line 722
    :cond_3
    if-eqz p2, :cond_2

    .line 723
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 724
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 726
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2201c

    const/4 v3, 0x0

    invoke-virtual {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2
.end method

.method public setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 6
    .parameter "c"
    .parameter "listener"
    .parameter "device"

    .prologue
    .line 688
    if-nez p1, :cond_3

    .line 690
    :goto_2
    return-void

    .line 689
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22034

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public setP2pTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V
    .registers 6
    .parameter "c"
    .parameter "start"

    .prologue
    .line 698
    if-nez p1, :cond_3

    .line 700
    :goto_2
    return-void

    .line 699
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x22036

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_2

    :cond_f
    const/4 v0, 0x2

    goto :goto_b
.end method

.method public stopDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 562
    if-nez p1, :cond_3

    .line 564
    :goto_2
    return-void

    .line 563
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22033

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2
.end method
