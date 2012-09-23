.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 3071
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3071
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 39
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3074
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 3075
    .local v10, action:Ljava/lang/String;
    const/16 v24, 0x0

    .line 3077
    .local v24, isMuted:Z
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 3078
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 3081
    .local v20, dockState:I
    packed-switch v20, :pswitch_data_882

    .line 3096
    const/16 v17, 0x0

    .line 3098
    .local v17, config:I
    :goto_1c
    const/4 v2, 0x3

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3440
    .end local v17           #config:I
    .end local v20           #dockState:I
    :cond_22
    :goto_22
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 3441
    const-string v2, "audioParam;curDevice"

    invoke-static {v2}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3442
    .local v23, isMusicHPH:Ljava/lang/String;
    const/16 v31, 0x0

    .local v31, spkIndex:I
    const/16 v21, 0x0

    .line 3443
    .local v21, hphIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    aget-object v34, v2, v3

    .line 3444
    .local v34, streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[I

    move-result-object v3

    const/16 v4, 0xc

    aget v3, v3, v4

    aget-object v33, v2, v3

    .line 3445
    .local v33, streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v34 .. v34}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_810

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v34 .. v34}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v31

    .line 3446
    :goto_66
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v33 .. v33}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_816

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v33 .. v33}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    .line 3449
    :goto_70
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 3450
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3451
    .local v32, state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_e5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isMediaSilentMode()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 3452
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_81c

    .line 3453
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plug EAPHONE  mMediaSilentMode SPK volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v4}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v4}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioService;->setStreamVolumeForce(III)V

    .line 3460
    :goto_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_SPK:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6902(Landroid/media/AudioService;I)I

    .line 3461
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7002(Landroid/media/AudioService;I)I

    .line 3462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMediaSilentMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;Z)Z

    .line 3466
    .end local v32           #state:I
    :cond_e5
    if-eqz v24, :cond_101

    .line 3467
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 3468
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    move/from16 v0, v31

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v3, v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;II)V

    .line 3469
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0xc

    move/from16 v0, v21

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v3, v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;II)V

    .line 3472
    :cond_101
    const-string v2, "HPH"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_851

    .line 3473
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/16 v4, 0x40

    move/from16 v0, v31

    move/from16 v1, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    .line 3474
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x9

    const/16 v4, 0x40

    move/from16 v0, v31

    move/from16 v1, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    .line 3479
    :goto_128
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_870

    .line 3480
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0xa

    const/16 v4, 0x40

    move/from16 v0, v21

    move/from16 v1, v31

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    .line 3485
    .end local v21           #hphIndex:I
    .end local v23           #isMusicHPH:Ljava/lang/String;
    .end local v31           #spkIndex:I
    .end local v33           #streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    .end local v34           #streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    :cond_141
    :goto_141
    return-void

    .line 3083
    .restart local v20       #dockState:I
    :pswitch_142
    const/16 v17, 0x7

    .line 3084
    .restart local v17       #config:I
    goto/16 :goto_1c

    .line 3086
    .end local v17           #config:I
    :pswitch_146
    const/16 v17, 0x6

    .line 3087
    .restart local v17       #config:I
    goto/16 :goto_1c

    .line 3089
    .end local v17           #config:I
    :pswitch_14a
    const/16 v17, 0x8

    .line 3090
    .restart local v17       #config:I
    goto/16 :goto_1c

    .line 3092
    .end local v17           #config:I
    :pswitch_14e
    const/16 v17, 0x9

    .line 3093
    .restart local v17       #config:I
    goto/16 :goto_1c

    .line 3099
    .end local v17           #config:I
    .end local v20           #dockState:I
    :cond_152
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 3100
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3102
    .restart local v32       #state:I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 3104
    .local v15, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v32

    #calls: Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v15, v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_22

    .line 3105
    .end local v15           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v32           #state:I
    :cond_178
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_254

    .line 3106
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3108
    .restart local v32       #state:I
    const/16 v19, 0x10

    .line 3109
    .local v19, device:I
    const/4 v12, 0x0

    .line 3111
    .local v12, address:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 3112
    .restart local v15       #btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v15, :cond_141

    .line 3116
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 3117
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v14

    .line 3118
    .local v14, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v14, :cond_1a9

    .line 3119
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_88e

    .line 3130
    :cond_1a9
    :goto_1a9
    invoke-static {v12}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b1

    .line 3131
    const-string v12, ""

    .line 3134
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3135
    :try_start_1ba
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_227

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_227

    const/16 v22, 0x1

    .line 3138
    .local v22, isConnected:Z
    :goto_1e6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_1ef
    .catchall {:try_start_1ba .. :try_end_1ef} :catchall_21e

    .line 3139
    if-eqz v22, :cond_22a

    const/4 v2, 0x2

    move/from16 v0, v32

    if-eq v0, v2, :cond_22a

    .line 3140
    const/4 v2, 0x0

    :try_start_1f7
    move/from16 v0, v19

    invoke-static {v0, v2, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3143
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3145
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)V

    .line 3153
    :cond_21a
    :goto_21a
    monitor-exit v4
    :try_end_21b
    .catchall {:try_start_1f7 .. :try_end_21b} :catchall_251

    .line 3154
    :try_start_21b
    monitor-exit v3

    goto/16 :goto_22

    .end local v22           #isConnected:Z
    :catchall_21e
    move-exception v2

    monitor-exit v3
    :try_end_220
    .catchall {:try_start_21b .. :try_end_220} :catchall_21e

    throw v2

    .line 3122
    :sswitch_221
    const/16 v19, 0x20

    .line 3123
    goto :goto_1a9

    .line 3125
    :sswitch_224
    const/16 v19, 0x40

    goto :goto_1a9

    .line 3135
    :cond_227
    const/16 v22, 0x0

    goto :goto_1e6

    .line 3146
    .restart local v22       #isConnected:Z
    :cond_22a
    if-nez v22, :cond_21a

    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_21a

    .line 3147
    const/4 v2, 0x1

    :try_start_232
    move/from16 v0, v19

    invoke-static {v0, v2, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3150
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v15}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_21a

    .line 3153
    :catchall_251
    move-exception v2

    monitor-exit v4
    :try_end_253
    .catchall {:try_start_232 .. :try_end_253} :catchall_251

    :try_start_253
    throw v2
    :try_end_254
    .catchall {:try_start_253 .. :try_end_254} :catchall_21e

    .line 3155
    .end local v12           #address:Ljava/lang/String;
    .end local v14           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v15           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v19           #device:I
    .end local v22           #isConnected:Z
    .end local v32           #state:I
    :cond_254
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37f

    .line 3156
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3157
    :try_start_265
    const-string/jumbo v2, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3158
    .restart local v32       #state:I
    const-string/jumbo v2, "microphone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 3161
    .local v25, microphone:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_2b8

    .line 3162
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_2b8

    .line 3164
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v27

    .line 3165
    .local v27, musicLev:I
    const/16 v18, 0xa

    .line 3166
    .local v18, defaultMusicLev:I
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_2b8

    .line 3167
    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_2b8

    .line 3168
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v4, 0xc

    const/16 v5, 0x40

    move/from16 v0, v18

    invoke-virtual {v2, v4, v0, v5}, Landroid/media/AudioService;->setStreamVolume(III)V

    .line 3169
    const-string v2, "AudioService"

    const-string v4, "HEADSET PLUG IN : set default volume "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    .end local v18           #defaultMusicLev:I
    .end local v27           #musicLev:I
    :cond_2b8
    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_2d5

    .line 3178
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;II)V

    .line 3179
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v4, 0xc

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;II)V

    .line 3180
    const/16 v24, 0x1

    .line 3182
    :cond_2d5
    if-eqz v25, :cond_32b

    .line 3183
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 3185
    .restart local v22       #isConnected:Z
    if-nez v32, :cond_309

    if-eqz v22, :cond_309

    .line 3186
    const/4 v2, 0x4

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3189
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    :cond_303
    :goto_303
    monitor-exit v3

    goto/16 :goto_22

    .end local v22           #isConnected:Z
    .end local v25           #microphone:I
    .end local v32           #state:I
    :catchall_306
    move-exception v2

    monitor-exit v3
    :try_end_308
    .catchall {:try_start_265 .. :try_end_308} :catchall_306

    throw v2

    .line 3190
    .restart local v22       #isConnected:Z
    .restart local v25       #microphone:I
    .restart local v32       #state:I
    :cond_309
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_303

    if-nez v22, :cond_303

    .line 3191
    const/4 v2, 0x4

    const/4 v4, 0x1

    :try_start_312
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3194
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_303

    .line 3198
    .end local v22           #isConnected:Z
    :cond_32b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 3200
    .restart local v22       #isConnected:Z
    if-nez v32, :cond_35b

    if-eqz v22, :cond_35b

    .line 3201
    const/16 v2, 0x8

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3205
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_303

    .line 3206
    :cond_35b
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_303

    if-nez v22, :cond_303

    .line 3207
    const/16 v2, 0x8

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3211
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37e
    .catchall {:try_start_312 .. :try_end_37e} :catchall_306

    goto :goto_303

    .line 3216
    .end local v22           #isConnected:Z
    .end local v25           #microphone:I
    .end local v32           #state:I
    :cond_37f
    const-string v2, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40d

    .line 3217
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3218
    .restart local v32       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_USB_ANLG_HEADSET_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3220
    :try_start_3b4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 3222
    .restart local v22       #isConnected:Z
    if-nez v32, :cond_3e9

    if-eqz v22, :cond_3e9

    .line 3223
    const/16 v2, 0x800

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3227
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3236
    :cond_3e3
    :goto_3e3
    monitor-exit v3

    goto/16 :goto_22

    .end local v22           #isConnected:Z
    :catchall_3e6
    move-exception v2

    monitor-exit v3
    :try_end_3e8
    .catchall {:try_start_3b4 .. :try_end_3e8} :catchall_3e6

    throw v2

    .line 3228
    .restart local v22       #isConnected:Z
    :cond_3e9
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_3e3

    if-nez v22, :cond_3e3

    .line 3229
    const/16 v2, 0x800

    const/4 v4, 0x1

    :try_start_3f3
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3233
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40c
    .catchall {:try_start_3f3 .. :try_end_40c} :catchall_3e6

    goto :goto_3e3

    .line 3237
    .end local v22           #isConnected:Z
    .end local v32           #state:I
    :cond_40d
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49b

    .line 3238
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3239
    .restart local v32       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_HDMI_AUDIO_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3241
    :try_start_442
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 3243
    .restart local v22       #isConnected:Z
    if-nez v32, :cond_477

    if-eqz v22, :cond_477

    .line 3244
    const/16 v2, 0x400

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3247
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3254
    :cond_471
    :goto_471
    monitor-exit v3

    goto/16 :goto_22

    .end local v22           #isConnected:Z
    :catchall_474
    move-exception v2

    monitor-exit v3
    :try_end_476
    .catchall {:try_start_442 .. :try_end_476} :catchall_474

    throw v2

    .line 3248
    .restart local v22       #isConnected:Z
    :cond_477
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_471

    if-nez v22, :cond_471

    .line 3249
    const/16 v2, 0x400

    const/4 v4, 0x1

    :try_start_481
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3252
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49a
    .catchall {:try_start_481 .. :try_end_49a} :catchall_474

    goto :goto_471

    .line 3255
    .end local v22           #isConnected:Z
    .end local v32           #state:I
    :cond_49b
    const-string v2, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_529

    .line 3256
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3257
    .restart local v32       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_USB_DGTL_HEADSET_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 3259
    :try_start_4d0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 3261
    .restart local v22       #isConnected:Z
    if-nez v32, :cond_505

    if-eqz v22, :cond_505

    .line 3262
    const/16 v2, 0x1000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3275
    :cond_4ff
    :goto_4ff
    monitor-exit v3

    goto/16 :goto_22

    .end local v22           #isConnected:Z
    :catchall_502
    move-exception v2

    monitor-exit v3
    :try_end_504
    .catchall {:try_start_4d0 .. :try_end_504} :catchall_502

    throw v2

    .line 3267
    .restart local v22       #isConnected:Z
    :cond_505
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_4ff

    if-nez v22, :cond_4ff

    .line 3268
    const/16 v2, 0x1000

    const/4 v4, 0x1

    :try_start_50f
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3272
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_528
    .catchall {:try_start_50f .. :try_end_528} :catchall_502

    goto :goto_4ff

    .line 3276
    .end local v22           #isConnected:Z
    .end local v32           #state:I
    :cond_529
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_615

    .line 3277
    const/4 v13, 0x0

    .line 3278
    .local v13, broadcast:Z
    const/16 v32, -0x1

    .line 3279
    .restart local v32       #state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 3280
    :try_start_53d
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3282
    .local v16, btState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_576

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_575

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_575

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_576

    .line 3286
    :cond_575
    const/4 v13, 0x1

    .line 3288
    :cond_576
    packed-switch v16, :pswitch_data_89c

    .line 3310
    :cond_579
    :goto_579
    const/4 v13, 0x0

    .line 3313
    :cond_57a
    :goto_57a
    monitor-exit v3
    :try_end_57b
    .catchall {:try_start_53d .. :try_end_57b} :catchall_5d3

    .line 3314
    if-eqz v13, :cond_22

    .line 3315
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v32

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    .line 3318
    new-instance v28, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3319
    .local v28, newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3320
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_22

    .line 3290
    .end local v28           #newIntent:Landroid/content/Intent;
    :pswitch_5a7
    const/16 v32, 0x1

    .line 3291
    :try_start_5a9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_57a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_57a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_57a

    .line 3294
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto :goto_57a

    .line 3313
    .end local v16           #btState:I
    :catchall_5d3
    move-exception v2

    monitor-exit v3
    :try_end_5d5
    .catchall {:try_start_5a9 .. :try_end_5d5} :catchall_5d3

    throw v2

    .line 3298
    .restart local v16       #btState:I
    :pswitch_5d6
    const/16 v32, 0x0

    .line 3299
    :try_start_5d8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 3300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_57a

    .line 3303
    :pswitch_5ea
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_579

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_579

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_579

    .line 3306
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I
    :try_end_613
    .catchall {:try_start_5d8 .. :try_end_613} :catchall_5d3

    goto/16 :goto_579

    .line 3322
    .end local v13           #broadcast:Z
    .end local v16           #btState:I
    .end local v32           #state:I
    :cond_615
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6cb

    .line 3323
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6402(Landroid/media/AudioService;Z)Z

    .line 3325
    const-string v2, "audio.country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3326
    .local v30, salescode:Ljava/lang/String;
    if-nez v30, :cond_6b7

    .line 3327
    const-string v2, "AudioService"

    const-string v3, "can not get salescode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6302(Landroid/media/AudioService;Z)Z

    .line 3342
    :cond_63c
    :goto_63c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 3345
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3, v2}, Landroid/media/AudioService;->access$6502(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 3347
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6602(Landroid/media/AudioService;I)I

    .line 3348
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)V

    .line 3349
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Z

    .line 3352
    new-instance v28, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3353
    .restart local v28       #newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3355
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3357
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 3358
    .local v11, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v11, :cond_22

    .line 3359
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v11, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_22

    .line 3330
    .end local v11           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v28           #newIntent:Landroid/content/Intent;
    :cond_6b7
    const-string v2, "1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63c

    .line 3332
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6302(Landroid/media/AudioService;Z)Z

    goto/16 :goto_63c

    .line 3362
    .end local v30           #salescode:Ljava/lang/String;
    :cond_6cb
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f3

    .line 3363
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_22

    .line 3365
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v29

    .line 3366
    .local v29, packageName:Ljava/lang/String;
    if-eqz v29, :cond_22

    .line 3367
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v29

    #calls: Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 3370
    .end local v29           #packageName:Ljava/lang/String;
    :cond_6f3
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_703

    .line 3371
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_22

    .line 3372
    :cond_703
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_713

    .line 3373
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_22

    .line 3376
    :cond_713
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_756

    .line 3378
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_8a6

    .line 3392
    const-string/jumbo v35, "off"

    .line 3394
    .local v35, tty_mode:Ljava/lang/String;
    :goto_731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_22

    .line 3382
    .end local v35           #tty_mode:Ljava/lang/String;
    :pswitch_74c
    const-string v35, "full"

    .line 3383
    .restart local v35       #tty_mode:Ljava/lang/String;
    goto :goto_731

    .line 3385
    .end local v35           #tty_mode:Ljava/lang/String;
    :pswitch_74f
    const-string/jumbo v35, "vco"

    .line 3386
    .restart local v35       #tty_mode:Ljava/lang/String;
    goto :goto_731

    .line 3388
    .end local v35           #tty_mode:Ljava/lang/String;
    :pswitch_753
    const-string v35, "hco"

    .line 3389
    .restart local v35       #tty_mode:Ljava/lang/String;
    goto :goto_731

    .line 3399
    .end local v35           #tty_mode:Ljava/lang/String;
    :cond_756
    const-string v2, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77c

    .line 3401
    const-string/jumbo v2, "mono"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 3402
    .local v26, monoMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v26

    #setter for: Landroid/media/AudioService;->mMonoMode:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$5602(Landroid/media/AudioService;I)I

    .line 3403
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v26

    #calls: Landroid/media/AudioService;->setMonoMode(I)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;I)V

    goto/16 :goto_22

    .line 3407
    .end local v26           #monoMode:I
    :cond_77c
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7fe

    .line 3408
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 3409
    .restart local v32       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 3412
    .restart local v22       #isConnected:Z
    if-nez v32, :cond_7d9

    if-eqz v22, :cond_7d9

    .line 3413
    const/16 v2, 0x800

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22

    .line 3416
    :cond_7d9
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_22

    if-nez v22, :cond_22

    .line 3417
    const/16 v2, 0x800

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3419
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x800

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22

    .line 3421
    .end local v22           #isConnected:Z
    .end local v32           #state:I
    :cond_7fe
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3422
    const-string v2, "AudioService"

    const-string/jumbo v3, "musicservicecommand"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 3445
    .restart local v21       #hphIndex:I
    .restart local v23       #isMusicHPH:Ljava/lang/String;
    .restart local v31       #spkIndex:I
    .restart local v33       #streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    .restart local v34       #streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    :cond_810
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v34 .. v34}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v31

    goto/16 :goto_66

    .line 3446
    :cond_816
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v33 .. v33}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    goto/16 :goto_70

    .line 3457
    .restart local v32       #state:I
    :cond_81c
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plug SPEAKER  mMediaSilentMode EAR volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v4}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0xc

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaLastAudibleIndex_EAR:I
    invoke-static {v4}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioService;->setStreamVolumeForce(III)V

    goto/16 :goto_cd

    .line 3476
    .end local v32           #state:I
    :cond_851
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/16 v4, 0x40

    move/from16 v0, v21

    move/from16 v1, v31

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    .line 3477
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x9

    const/16 v4, 0x40

    move/from16 v0, v21

    move/from16 v1, v31

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    goto/16 :goto_128

    .line 3482
    :cond_870
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0xa

    const/16 v4, 0x40

    move/from16 v0, v31

    move/from16 v1, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v2, v3, v0, v1, v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;IIII)V

    goto/16 :goto_141

    .line 3081
    nop

    :pswitch_data_882
    .packed-switch 0x1
        :pswitch_142
        :pswitch_146
        :pswitch_14a
        :pswitch_14e
    .end packed-switch

    .line 3119
    :sswitch_data_88e
    .sparse-switch
        0x404 -> :sswitch_221
        0x408 -> :sswitch_221
        0x420 -> :sswitch_224
    .end sparse-switch

    .line 3288
    :pswitch_data_89c
    .packed-switch 0xa
        :pswitch_5d6
        :pswitch_5ea
        :pswitch_5a7
    .end packed-switch

    .line 3378
    :pswitch_data_8a6
    .packed-switch 0x1
        :pswitch_74c
        :pswitch_753
        :pswitch_74f
    .end packed-switch
.end method
