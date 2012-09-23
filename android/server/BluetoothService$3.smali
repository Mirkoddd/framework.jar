.class Landroid/server/BluetoothService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 2597
    iput-object p1, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2600
    if-nez p2, :cond_3

    .line 2702
    :cond_2
    :goto_2
    return-void

    .line 2602
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2603
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 2604
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2607
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v7}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 2608
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v7

    const/16 v8, 0x37

    invoke-virtual {v7, v8}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 2610
    :cond_27
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v7

    const/16 v8, 0x38

    invoke-virtual {v7, v8}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 2612
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_33
    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 2613
    const-string v7, "android.intent.extra.DOCK_STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2615
    .local v6, state:I
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    if-nez v6, :cond_67

    .line 2617
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/server/BluetoothService;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 2618
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2620
    :cond_67
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "bluetooth_service_settings"

    iget-object v9, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2623
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dock_bluetooth_address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/server/BluetoothService;->access$900()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2624
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 2629
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #state:I
    :cond_9d
    const-string v7, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED_CUSTOM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 2630
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2631
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    const/16 v8, 0x15

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_2

    .line 2637
    :cond_b7
    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b2

    .line 2638
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 2639
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent IT Policy"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Tethering IT Policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isTetheringOn? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->isTetheringOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v7

    if-nez v7, :cond_16a

    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_16a

    .line 2642
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/server/BluetoothService;->access$202(I)I

    .line 2643
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/server/BluetoothService;->disable(Z)Z

    .line 2644
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2654
    :cond_138
    :goto_138
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2655
    const-string v7, "BluetoothService"

    const-string v8, "Disable Bluetooth Tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_158
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2657
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7, v1}, Landroid/server/BluetoothService;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_158

    .line 2645
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_16a
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_195

    .line 2646
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/server/BluetoothService;->access$202(I)I

    .line 2647
    const-string/jumbo v7, "service.bt.security.policy.mode"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_138

    .line 2649
    :cond_195
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_138

    .line 2650
    const/4 v7, 0x2

    invoke-static {v7}, Landroid/server/BluetoothService;->access$202(I)I

    .line 2651
    const-string/jumbo v7, "service.bt.security.policy.mode"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 2659
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1aa
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/server/BluetoothService;->setBluetoothTethering(Z)V

    goto/16 :goto_2

    .line 2663
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_1b2
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d9

    .line 2666
    const-string v7, "BluetoothService"

    const-string v8, " Received BOOT_COMPLETED message"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2688
    :cond_1d9
    const-string v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f3

    .line 2689
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    const-string/jumbo v8, "phoneinECMState"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Landroid/server/BluetoothEventLoop;->mEmergencyCallbackMode:Z

    goto/16 :goto_2

    .line 2693
    :cond_1f3
    const-string v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_220

    .line 2694
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-static {v7}, Landroid/server/BluetoothService;->access$1308(Landroid/server/BluetoothService;)I

    .line 2695
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACL connected, mAclLinkCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2697
    :cond_220
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2698
    iget-object v7, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-static {v7}, Landroid/server/BluetoothService;->access$1310(Landroid/server/BluetoothService;)I

    .line 2699
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACL disconnected, mAclLinkCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
