.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCreatedState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 1499
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1502
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1505
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 1531
    :cond_19
    :goto_19
    return-void

    .line 1508
    :cond_1a
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 1513
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22036

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1516
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1517
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "192.168.49.1"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto :goto_19

    .line 1519
    :cond_54
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    if-eqz v0, :cond_19

    .line 1521
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1522
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static {v0, v1, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 1523
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$10302(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1524
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1525
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "192.168.49.1"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1527
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v0

    iput-boolean v5, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->isStaticIp:Z

    .line 1528
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_19
.end method

.method public exit()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1814
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1815
    const-string v0, "WifiP2pService"

    const-string v1, "=========== Exit GroupCreatedState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isWifiP2pSettingScreen()Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1818
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22036

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1820
    :cond_28
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v1, 0x3

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 1821
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupTermination()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1822
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1824
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1825
    :cond_53
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1827
    :cond_58
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 25
    .parameter "message"

    .prologue
    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_b8a

    .line 1808
    const/16 v18, 0x0

    .line 1810
    :goto_2d
    return v18

    .line 1538
    :sswitch_2e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 1540
    .local v17, timeout:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiNative;->p2pFlushFind(I)Z

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22009

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1810
    .end local v17           #timeout:I
    :cond_49
    :goto_49
    const/16 v18, 0x1

    goto :goto_2d

    .line 1544
    :sswitch_4c
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1545
    .local v14, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v18

    if-eqz v18, :cond_49

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_49

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invitation timed out in Multi-connecting : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static/range {v18 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10508(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    if-nez v18, :cond_124

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    goto/16 :goto_49

    .line 1559
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x23033

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v20, 0x7530

    invoke-virtual/range {v18 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2200a

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_49

    .line 1567
    .end local v14           #index:I
    :sswitch_156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1570
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 1572
    .local v10, deviceAddress:Ljava/lang/String;
    if-eqz v10, :cond_2cf

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static {v0, v10, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ap sta connected"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$10302(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    move/from16 v18, v0

    if-eqz v18, :cond_256

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->mThisDeviceStaticIp:I

    move/from16 v19, v0

    const/high16 v20, 0x100

    add-int v15, v19, v20

    move-object/from16 v0, v18

    iput v15, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->mThisDeviceStaticIp:I

    .line 1583
    .local v15, mNextIpAddr:I
    const-string/jumbo v18, "static_ip"

    invoke-static {v15}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/net/wifi/WifiNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "next: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v15}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1586
    .end local v15           #mNextIpAddr:I
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v18

    if-eqz v18, :cond_49

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10508(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    if-nez v18, :cond_29d

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    goto/16 :goto_49

    .line 1593
    :cond_29d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x23033

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v20, 0x7530

    invoke-virtual/range {v18 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2200a

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_49

    .line 1599
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Connect on unknown device address : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_49

    .line 1603
    .end local v10           #deviceAddress:Ljava/lang/String;
    :sswitch_2ef
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 1604
    .restart local v10       #deviceAddress:Ljava/lang/String;
    if-eqz v10, :cond_458

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static {v0, v10, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->removeClient(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3f0

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removed client "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPersistGroup:Z
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$6100(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v18

    if-nez v18, :cond_37b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v18

    if-eqz v18, :cond_37b

    .line 1610
    const-string v18, "WifiP2pService"

    const-string v19, "Client list empty, remove non-persistent p2p group"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    .line 1619
    :cond_37b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$10302(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$10300(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v18

    if-nez v18, :cond_44d

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const-string v19, "REMOVE_GROUP since all clients left"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22013

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1627
    :goto_3c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ap sta disconnected"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_49

    .line 1614
    :cond_3f0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to remove client "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_420
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_37b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1616
    .local v4, c:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "client "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_420

    .line 1625
    .end local v4           #c:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_44d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_3c5

    .line 1630
    :cond_458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Disconnect on unknown device address : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_49

    .line 1634
    .end local v10           #deviceAddress:Ljava/lang/String;
    :sswitch_478
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/DhcpInfoInternal;

    .line 1635
    .local v12, dhcpInfo:Landroid/net/DhcpInfoInternal;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_569

    if-eqz v12, :cond_569

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DhcpInfo: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$10800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpInfoInternal;

    move-result-object v18

    if-eqz v18, :cond_4de

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$10800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpInfoInternal;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_55c

    .line 1639
    :cond_4de
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v0, v12}, Landroid/net/wifi/p2p/WifiP2pService;->access$10802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static/range {v18 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$10302(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_49

    .line 1649
    :cond_55c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const-string v19, "ignore dhcp renew"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_49

    .line 1652
    :cond_569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_49

    .line 1656
    .end local v12           #dhcpInfo:Landroid/net/DhcpInfoInternal;
    :sswitch_57c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " remove group"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mHangEvent:Z
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5c2

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2401e

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_49

    .line 1661
    :cond_5c2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5ea

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22015

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_49

    .line 1664
    :cond_5ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22014

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_49

    .line 1670
    :sswitch_602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " group removed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v11

    .line 1672
    .local v11, devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const/4 v6, 0x0

    .line 1673
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_643
    :goto_643
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_673

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1674
    .local v8, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-interface {v11, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_66b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_643

    .line 1675
    :cond_66b
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1676
    const/4 v6, 0x1

    goto :goto_643

    .line 1680
    .end local v8           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v18

    if-eqz v18, :cond_705

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopDhcpServer()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1700
    :cond_68c
    :goto_68c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$10302(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mHangEvent:Z
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v18

    if-nez v18, :cond_6e5

    .line 1708
    const-string/jumbo v18, "static_ip"

    const-string v19, "192.168.49.10"

    invoke-static/range {v18 .. v19}, Landroid/net/wifi/WifiNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1711
    :cond_6e5
    if-eqz v6, :cond_6f0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1712
    :cond_6f0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_49

    .line 1683
    :cond_705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->isStaticIp:Z

    move/from16 v18, v0

    if-eqz v18, :cond_736

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const-string v19, "initialize P2pStaticIpConfig"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->isStaticIp:Z

    goto/16 :goto_68c

    .line 1688
    :cond_736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const-string/jumbo v19, "stop DHCP client"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$9600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v18

    if-eqz v18, :cond_78e

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$9600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v18

    const v19, 0x30002

    invoke-virtual/range {v18 .. v19}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$9600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/DhcpStateMachine;->quit()V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$9602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 1694
    :cond_78e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$10800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpInfoInternal;

    move-result-object v18

    if-eqz v18, :cond_68c

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$10802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;

    goto/16 :goto_68c

    .line 1715
    .end local v6           #changed:Z
    .end local v11           #devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    :sswitch_7b3
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1716
    .local v9, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7ef

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const-string v19, "Lost the group owner, killing p2p connection"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    .line 1725
    :cond_7eb
    :goto_7eb
    const/16 v18, 0x0

    goto/16 :goto_2d

    .line 1719
    :cond_7ef
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->removeClient(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v18

    if-eqz v18, :cond_7eb

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPersistGroup:Z
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$6100(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v18

    if-nez v18, :cond_7eb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v18

    if-eqz v18, :cond_7eb

    .line 1721
    const-string v18, "WifiP2pService"

    const-string v19, "Client list empty, removing a non-persistent p2p group"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto :goto_7eb

    .line 1727
    .end local v9           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_83c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x22013

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_49

    .line 1731
    :sswitch_857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v18

    if-eqz v18, :cond_8d8

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    .line 1733
    .local v7, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    if-eqz v7, :cond_49

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inviting device : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/net/wifi/WifiNative;->p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_49

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static/range {v18 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_49

    .line 1743
    .end local v7           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_8d8
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1744
    .restart local v7       #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inviting device : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v18

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/net/wifi/WifiNative;->p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_94b

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static/range {v18 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2200c

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_49

    .line 1751
    :cond_94b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2200b

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_49

    .line 1758
    .end local v7           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_995
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9c2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1761
    .local v5, cc:Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "device :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_995

    .line 1763
    .end local v5           #cc:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_9c2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2200c

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    if-nez v18, :cond_a06

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    goto/16 :goto_49

    .line 1769
    :cond_a06
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x23033

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v20, 0x7530

    invoke-virtual/range {v18 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2200a

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_49

    .line 1777
    .end local v13           #i$:Ljava/util/Iterator;
    :sswitch_a38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService;->access$10300(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a5b

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showConnectionLimitDialog()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_49

    .line 1781
    :cond_a5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 1782
    .local v16, provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    .line 1787
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const v19, 0x24023

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b03

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1795
    :goto_ad0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b61

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b61

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceivedForceAccept()V
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_49

    .line 1789
    :cond_b03
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const v19, 0x24024

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b47

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_ad0

    .line 1793
    :cond_b47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_ad0

    .line 1799
    :cond_b61
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    move-result-object v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_49

    .line 1805
    .end local v16           #provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_b81
    const-string v18, "WifiP2pService"

    const-string v19, "Duplicate group creation event notice, ignore"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 1536
    :sswitch_data_b8a
    .sparse-switch
        0x22004 -> :sswitch_83c
        0x2200a -> :sswitch_857
        0x22013 -> :sswitch_57c
        0x22032 -> :sswitch_2e
        0x22050 -> :sswitch_963
        0x23033 -> :sswitch_4c
        0x24016 -> :sswitch_7b3
        0x2401d -> :sswitch_b81
        0x2401e -> :sswitch_602
        0x24021 -> :sswitch_a38
        0x24023 -> :sswitch_a38
        0x24024 -> :sswitch_a38
        0x24029 -> :sswitch_2ef
        0x2402a -> :sswitch_156
        0x30005 -> :sswitch_478
    .end sparse-switch
.end method
