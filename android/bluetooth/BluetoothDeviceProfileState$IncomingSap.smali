.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingSap"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 3
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 1102
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering IncomingSap state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$12200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$12300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->mCommand:I

    .line 1104
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->mCommand:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_49

    .line 1105
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: IncomingSap state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_49
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->mStatus:Z

    .line 1108
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->mStatus:Z

    if-nez v0, :cond_5e

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 1109
    :cond_5e
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .parameter "message"

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1113
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncomingSap State->Processing Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 1114
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1115
    .local v0, deferMsg:Landroid/os/Message;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_70

    .line 1160
    :goto_27
    return v2

    .line 1126
    :sswitch_28
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$12400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_2d
    :goto_2d
    :sswitch_2d
    move v2, v3

    .line 1160
    goto :goto_27

    .line 1129
    :sswitch_2f
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v4, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7302(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 1130
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1131
    .local v1, val:I
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v4, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$900(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 1132
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    if-ne v1, v3, :cond_40

    move v2, v3

    :cond_40
    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v4, v7, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_2d

    .line 1136
    .end local v1           #val:I
    :sswitch_44
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7300(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1137
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v4, v7, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    .line 1138
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7500(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 1139
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_2d

    .line 1152
    :sswitch_5e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$12500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2d

    .line 1155
    :sswitch_64
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$12600(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_2d

    .line 1115
    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_28
        0x3 -> :sswitch_28
        0x4 -> :sswitch_28
        0x5 -> :sswitch_28
        0x6 -> :sswitch_28
        0x7 -> :sswitch_28
        0x32 -> :sswitch_28
        0x33 -> :sswitch_2d
        0x34 -> :sswitch_28
        0x35 -> :sswitch_2d
        0x36 -> :sswitch_28
        0x37 -> :sswitch_2d
        0x38 -> :sswitch_5e
        0x39 -> :sswitch_5e
        0x3a -> :sswitch_5e
        0x64 -> :sswitch_5e
        0x65 -> :sswitch_5e
        0x66 -> :sswitch_64
        0x68 -> :sswitch_2f
        0x69 -> :sswitch_44
    .end sparse-switch
.end method
