.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 13
    .parameter "message"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const v9, 0x22004

    const/4 v8, 0x2

    .line 510
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 511
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_22c

    .line 619
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 620
    const/4 v4, 0x0

    .line 622
    :goto_42
    return v4

    .line 513
    :sswitch_43
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_5b

    .line 514
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v6, "Full connection with WifiStateMachine established"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 515
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/AsyncChannel;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v6, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$902(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    :cond_59
    :goto_59
    :sswitch_59
    move v4, v5

    .line 622
    goto :goto_42

    .line 517
    :cond_5b
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full connection failure, error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 518
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$902(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_59

    .line 523
    :sswitch_7d
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v8, :cond_90

    .line 524
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v6, "Send failed, client connection lost"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 528
    :goto_88
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$902(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_59

    .line 526
    :cond_90
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client connection lost with reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_88

    .line 532
    :sswitch_ab
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 533
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_59

    .line 537
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_c4
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 538
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto :goto_59

    .line 541
    :sswitch_cf
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v6, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 542
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SET_DEVICE_NAME : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 543
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 544
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "wifi_p2p_ssid"

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 545
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_59

    .line 548
    :sswitch_12e
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x22002

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_59

    .line 552
    :sswitch_138
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x22005

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_59

    .line 556
    :sswitch_142
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x22008

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_59

    .line 560
    :sswitch_14c
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x2200b

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_59

    .line 564
    :sswitch_156
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x2200e

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_59

    .line 568
    :sswitch_160
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x22011

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_59

    .line 572
    :sswitch_16a
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x22014

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_59

    .line 576
    :sswitch_174
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x22017

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_59

    .line 579
    :sswitch_184
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 580
    .local v3, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 581
    .local v1, cmd:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 582
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->p2pCustomCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, cmdResponse:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom command response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 584
    iput-object v2, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 585
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x2201d

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v6, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_59

    .line 588
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #cmdResponse:Ljava/lang/String;
    .end local v3           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_1ca
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x22019

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v7

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_59

    .line 591
    :sswitch_1da
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x2201b

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_59

    .line 594
    :sswitch_1ea
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isAirplaneModeOn()Z
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 595
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->bAirPlaneMode:Z
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$2102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 596
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_59

    .line 600
    :sswitch_200
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_59

    .line 611
    :sswitch_207
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 612
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHangEvent:Z
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$2202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 613
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_59

    .line 614
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 615
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iput-object v10, v4, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    goto/16 :goto_59

    .line 511
    :sswitch_data_22c
    .sparse-switch
        0x11000 -> :sswitch_43
        0x11001 -> :sswitch_ab
        0x11004 -> :sswitch_7d
        0x20083 -> :sswitch_c4
        0x22001 -> :sswitch_12e
        0x22004 -> :sswitch_138
        0x22007 -> :sswitch_142
        0x2200a -> :sswitch_14c
        0x2200d -> :sswitch_156
        0x22010 -> :sswitch_160
        0x22013 -> :sswitch_16a
        0x22016 -> :sswitch_174
        0x22018 -> :sswitch_1ca
        0x2201a -> :sswitch_1da
        0x2201c -> :sswitch_184
        0x22034 -> :sswitch_cf
        0x23003 -> :sswitch_59
        0x23004 -> :sswitch_59
        0x23005 -> :sswitch_59
        0x23006 -> :sswitch_59
        0x23007 -> :sswitch_59
        0x23008 -> :sswitch_1ea
        0x23009 -> :sswitch_200
        0x24009 -> :sswitch_207
        0x24020 -> :sswitch_59
    .end sparse-switch
.end method
