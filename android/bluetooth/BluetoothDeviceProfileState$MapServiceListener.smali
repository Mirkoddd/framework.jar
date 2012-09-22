.class Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothMap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 4
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothMap$ServiceListener;)V

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMapService:Landroid/bluetooth/BluetoothMap;
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;

    .line 349
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .registers 4

    .prologue
    .line 351
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 352
    :try_start_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMapServiceConnected:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 353
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onServiceDisconnected()V
    .registers 4

    .prologue
    .line 356
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 357
    :try_start_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMapServiceConnected:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 358
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
