.class Landroid/bluetooth/BluetoothDeviceProfileState$2;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 2
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 301
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 302
    :try_start_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 303
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1500(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 304
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 305
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 307
    :cond_1f
    monitor-exit v1

    .line 308
    return-void

    .line 307
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onServiceDisconnected(I)V
    .registers 5
    .parameter "profile"

    .prologue
    .line 310
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 311
    :try_start_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 312
    monitor-exit v1

    .line 313
    return-void

    .line 312
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
