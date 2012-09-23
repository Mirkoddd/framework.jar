.class Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForWpsCompletionState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 3665
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 3669
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3670
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3674
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_e2

    .line 3739
    :goto_7
    return v3

    .line 3686
    :sswitch_8
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/net/wifi/WifiStateMachine;->access$14800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 3738
    :goto_d
    const v3, 0xc366

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(II)I

    move v3, v4

    .line 3739
    goto :goto_7

    .line 3690
    :sswitch_17
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_d

    .line 3696
    :sswitch_1d
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v5, v3}, Landroid/net/wifi/WifiStateMachine;->access$6502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3697
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$14900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_d

    .line 3700
    :sswitch_2e
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v5, v3}, Landroid/net/wifi/WifiStateMachine;->access$6502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3701
    invoke-static {}, Landroid/net/wifi/WifiNative;->cancelWpsCommand()Z

    .line 3702
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 3703
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$15000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_d

    .line 3707
    :sswitch_45
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v5

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3708
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 3709
    .local v2, wpsEvent:Ljava/lang/String;
    const/4 v0, 0x5

    .line 3710
    .local v0, event:I
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyGetWpsEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3711
    const-string/jumbo v5, "wps_success"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 3712
    const/4 v0, 0x1

    .line 3722
    :cond_7a
    :goto_7a
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendWpsEventBroadcast(I)V
    invoke-static {v5, v0}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3723
    if-eq v0, v4, :cond_bf

    .line 3724
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v5, v3}, Landroid/net/wifi/WifiStateMachine;->access$6502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3725
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_d

    .line 3713
    :cond_93
    const-string/jumbo v5, "wps_fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 3714
    const/4 v0, 0x2

    goto :goto_7a

    .line 3715
    :cond_9e
    const-string/jumbo v5, "wps_overlap"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 3716
    const/4 v0, 0x3

    goto :goto_7a

    .line 3717
    :cond_a9
    const-string/jumbo v5, "wps_timeout"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 3718
    const/4 v0, 0x4

    goto :goto_7a

    .line 3719
    :cond_b4
    const-string/jumbo v5, "wps_not_defined"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 3720
    const/4 v0, 0x5

    goto :goto_7a

    .line 3727
    :cond_bf
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_d

    .line 3732
    .end local v0           #event:I
    .end local v2           #wpsEvent:Ljava/lang/String;
    :sswitch_c4
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v4, :cond_cb

    move v3, v4

    :cond_cb
    invoke-static {v5, v3}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v1

    .line 3733
    .local v1, ok:Z
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_df

    move v3, v4

    :goto_da
    invoke-virtual {v5, p1, v6, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_d

    :cond_df
    const/4 v3, -0x1

    goto :goto_da

    .line 3674
    nop

    :sswitch_data_e2
    .sparse-switch
        0x2000d -> :sswitch_8
        0x2000e -> :sswitch_8
        0x20036 -> :sswitch_c4
        0x20048 -> :sswitch_8
        0x2004b -> :sswitch_8
        0x2004c -> :sswitch_8
        0x20056 -> :sswitch_8
        0x20079 -> :sswitch_1d
        0x2007b -> :sswitch_2e
        0x24003 -> :sswitch_8
        0x24004 -> :sswitch_17
        0x24033 -> :sswitch_45
    .end sparse-switch
.end method
