.class Landroid/net/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 3057
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 3061
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3062
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15
    .parameter "message"

    .prologue
    .line 3067
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_260

    .line 3245
    const/4 v7, 0x0

    .line 3248
    :goto_6
    return v7

    .line 3071
    :sswitch_7
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 3072
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v7

    const v8, 0x24007

    invoke-virtual {v7, v8}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 3247
    :cond_1b
    :goto_1b
    const v7, 0xc366

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3248
    const/4 v7, 0x1

    goto :goto_6

    .line 3077
    :sswitch_25
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x1

    #calls: Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_1b

    .line 3080
    :sswitch_2c
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v7, p1}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v4

    .line 3085
    .local v4, state:Landroid/net/wifi/SupplicantState;
    invoke-static {v4}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 3086
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v8, :cond_4b

    .line 3087
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)V

    .line 3089
    :cond_4b
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1b

    .line 3098
    :cond_57
    sget-object v7, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v7, :cond_79

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v8, :cond_79

    .line 3101
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)V

    .line 3102
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3105
    :cond_79
    sget-object v7, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v7, :cond_1b

    .line 3106
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/StateChangeResult;

    .line 3107
    .local v5, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget v7, v5, Landroid/net/wifi/StateChangeResult;->networkId:I

    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3110
    .local v3, private_key:Ljava/lang/String;
    if-eqz v3, :cond_1b

    .line 3111
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$10102(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1b

    .line 3119
    .end local v3           #private_key:Ljava/lang/String;
    .end local v4           #state:Landroid/net/wifi/SupplicantState;
    .end local v5           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :sswitch_9b
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    goto/16 :goto_1b

    .line 3122
    :sswitch_a0
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    goto/16 :goto_1b

    .line 3125
    :sswitch_a5
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z

    goto/16 :goto_1b

    .line 3128
    :sswitch_aa
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 3129
    .local v2, netId:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3131
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_bc

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7, v0, v8}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 3143
    :cond_bc
    if-eqz v0, :cond_f2

    .line 3144
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 3150
    :goto_c2
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v7

    const v8, 0x20056

    invoke-virtual {v7, v8}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 3152
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 3153
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static {v7, v2}, Landroid/net/wifi/WifiStateMachine;->access$10202(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3154
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkChoiceTime:J
    invoke-static {v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$10302(Landroid/net/wifi/WifiStateMachine;J)J

    .line 3155
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$10402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3158
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1b

    .line 3146
    :cond_f2
    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)V

    goto :goto_c2

    .line 3161
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #netId:I
    :sswitch_f6
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v7

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3163
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$6502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3164
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$10700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1b

    .line 3167
    :sswitch_116
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$6502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3168
    invoke-static {}, Landroid/net/wifi/WifiNative;->cancelWpsCommand()Z

    .line 3169
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 3170
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$10900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1b

    .line 3174
    :sswitch_12f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 3175
    .local v6, wpsEvent:Ljava/lang/String;
    const/4 v1, 0x5

    .line 3176
    .local v1, event:I
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyGetWpsEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3177
    const-string/jumbo v7, "wps_success"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_172

    .line 3178
    const/4 v1, 0x1

    .line 3188
    :cond_157
    :goto_157
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendWpsEventBroadcast(I)V
    invoke-static {v7, v1}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3189
    const/4 v7, 0x1

    if-eq v1, v7, :cond_19e

    .line 3190
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$6502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3191
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1b

    .line 3179
    :cond_172
    const-string/jumbo v7, "wps_fail"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17d

    .line 3180
    const/4 v1, 0x2

    goto :goto_157

    .line 3181
    :cond_17d
    const-string/jumbo v7, "wps_overlap"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_188

    .line 3182
    const/4 v1, 0x3

    goto :goto_157

    .line 3183
    :cond_188
    const-string/jumbo v7, "wps_timeout"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_193

    .line 3184
    const/4 v1, 0x4

    goto :goto_157

    .line 3185
    :cond_193
    const-string/jumbo v7, "wps_not_defined"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_157

    .line 3186
    const/4 v1, 0x5

    goto :goto_157

    .line 3193
    :cond_19e
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_1b

    .line 3199
    .end local v1           #event:I
    .end local v6           #wpsEvent:Ljava/lang/String;
    :sswitch_1a3
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 3201
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 3204
    :sswitch_1aa
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$4102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3205
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v8, v7}, Landroid/net/wifi/WifiStateMachine;->access$4002(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 3208
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchSSID()Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 3209
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 3210
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 3211
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_21d

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$10200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-ne v7, v8, :cond_21d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkChoiceTime:J
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v9

    const-wide/32 v11, 0x1d4c0

    add-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_21d

    .line 3215
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiInfo;->setExplicitConnect(Z)V

    .line 3217
    :cond_21d
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$10402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3224
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3225
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3227
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsFinish(Z)V

    goto/16 :goto_1b

    .line 3232
    :sswitch_241
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)V

    .line 3233
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3235
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsFinish(Z)V

    goto/16 :goto_1b

    .line 3241
    :sswitch_259
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsKeystoreRequired()V

    goto/16 :goto_1b

    .line 3067
    :sswitch_data_260
    .sparse-switch
        0x2004a -> :sswitch_9b
        0x2004b -> :sswitch_a0
        0x2004c -> :sswitch_a5
        0x20056 -> :sswitch_aa
        0x20059 -> :sswitch_f6
        0x2007b -> :sswitch_116
        0x20085 -> :sswitch_259
        0x24003 -> :sswitch_1aa
        0x24004 -> :sswitch_241
        0x24005 -> :sswitch_1a3
        0x24006 -> :sswitch_2c
        0x24007 -> :sswitch_7
        0x24008 -> :sswitch_25
        0x24033 -> :sswitch_12f
    .end sparse-switch
.end method
