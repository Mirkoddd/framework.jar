.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x23

.field static final TRANSACTION_adjustStreamVolume:I = 0x3

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x2

.field static final TRANSACTION_adjustVolume:I = 0x1

.field static final TRANSACTION_dismissVolumePanel:I = 0x32

.field static final TRANSACTION_getActiveStreamType:I = 0x2e

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xd

.field static final TRANSACTION_getMode:I = 0x14

.field static final TRANSACTION_getRingerMode:I = 0xf

.field static final TRANSACTION_getStreamMaxVolume:I = 0xc

.field static final TRANSACTION_getStreamVolume:I = 0x8

.field static final TRANSACTION_getStreamVolumeForce:I = 0xb

.field static final TRANSACTION_getVibrateSetting:I = 0x11

.field static final TRANSACTION_isBluetoothScoOn:I = 0x21

.field static final TRANSACTION_isEarProtectLimitOn:I = 0x1f

.field static final TRANSACTION_isMediaSilentMode:I = 0x30

.field static final TRANSACTION_isRadioSpeakerOn:I = 0x1d

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x1b

.field static final TRANSACTION_isStreamMute:I = 0x7

.field static final TRANSACTION_ismVoiceCapable:I = 0x31

.field static final TRANSACTION_loadSoundEffects:I = 0x17

.field static final TRANSACTION_playSoundEffect:I = 0x15

.field static final TRANSACTION_playSoundEffectVolume:I = 0x16

.field static final TRANSACTION_registerMediaButtonIntent:I = 0x25

.field static final TRANSACTION_registerRemoteControlClient:I = 0x27

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x29

.field static final TRANSACTION_reloadAudioSettings:I = 0x19

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x2b

.field static final TRANSACTION_requestAudioFocus:I = 0x22

.field static final TRANSACTION_setBluetoothA2dpForceOn:I = 0x1e

.field static final TRANSACTION_setBluetoothScoOn:I = 0x20

.field static final TRANSACTION_setMediaSilentMode:I = 0x2f

.field static final TRANSACTION_setMode:I = 0x13

.field static final TRANSACTION_setRadioSpeakerOn:I = 0x1c

.field static final TRANSACTION_setRingerMode:I = 0xe

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1a

.field static final TRANSACTION_setStreamMute:I = 0x6

.field static final TRANSACTION_setStreamSolo:I = 0x5

.field static final TRANSACTION_setStreamVolume:I = 0x4

.field static final TRANSACTION_setStreamVolumeForce:I = 0x9

.field static final TRANSACTION_setStreamVolumeWithOutChange:I = 0xa

.field static final TRANSACTION_setVibrateSetting:I = 0x10

.field static final TRANSACTION_shouldVibrate:I = 0x12

.field static final TRANSACTION_startBluetoothSco:I = 0x2c

.field static final TRANSACTION_stopBluetoothSco:I = 0x2d

.field static final TRANSACTION_unloadSoundEffects:I = 0x18

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x24

.field static final TRANSACTION_unregisterMediaButtonIntent:I = 0x26

.field static final TRANSACTION_unregisterRemoteControlClient:I = 0x28

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x2a


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_474

    .line 575
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 45
    :sswitch_a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 61
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_24
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 87
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_54
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 100
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_6c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    move v2, v8

    .line 106
    .local v2, _arg1:Z
    :cond_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 107
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 113
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_87
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_97

    move v2, v8

    .line 119
    .restart local v2       #_arg1:Z
    :cond_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 120
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 126
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_a3
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v7

    .line 130
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v7, :cond_b6

    move v2, v8

    :cond_b6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_bb
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v7

    .line 140
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 146
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_d0
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 153
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolumeForce(III)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 159
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_e9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithOutChange(III)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 172
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_102
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolumeForce(I)I

    move-result v7

    .line 176
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_117
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v7

    .line 186
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 192
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_12c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v7

    .line 196
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 202
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_141
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 211
    .end local v1           #_arg0:I
    :sswitch_152
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v7

    .line 213
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 219
    .end local v7           #_result:I
    :sswitch_163
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 230
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_178
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v7

    .line 234
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 240
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_18d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 243
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v7

    .line 244
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v7, :cond_1a0

    move v2, v8

    :cond_1a0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 250
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_1a5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 255
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 261
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_1ba
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v7

    .line 263
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 269
    .end local v7           #_result:I
    :sswitch_1cb
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    goto/16 :goto_9

    .line 277
    .end local v1           #_arg0:I
    :sswitch_1d9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 281
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 282
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    goto/16 :goto_9

    .line 287
    .end local v1           #_arg0:I
    .end local v2           #_arg1:F
    :sswitch_1eb
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v7

    .line 289
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v7, :cond_1fa

    move v2, v8

    :cond_1fa
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 295
    .end local v7           #_result:Z
    :sswitch_1ff
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    goto/16 :goto_9

    .line 301
    :sswitch_209
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    goto/16 :goto_9

    .line 307
    :sswitch_213
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_227

    move v1, v8

    .line 310
    .local v1, _arg0:Z
    :goto_21f
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_227
    move v1, v2

    .line 309
    goto :goto_21f

    .line 316
    :sswitch_229
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v7

    .line 318
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v7, :cond_238

    move v2, v8

    :cond_238
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 324
    .end local v7           #_result:Z
    :sswitch_23d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_251

    move v1, v8

    .line 327
    .restart local v1       #_arg0:Z
    :goto_249
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRadioSpeakerOn(Z)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_251
    move v1, v2

    .line 326
    goto :goto_249

    .line 333
    :sswitch_253
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isRadioSpeakerOn()Z

    move-result v7

    .line 335
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v7, :cond_262

    move v2, v8

    :cond_262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 341
    .end local v7           #_result:Z
    :sswitch_267
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27b

    move v1, v8

    .line 344
    .restart local v1       #_arg0:Z
    :goto_273
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpForceOn(Z)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_27b
    move v1, v2

    .line 343
    goto :goto_273

    .line 350
    :sswitch_27d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isEarProtectLimitOn()Z

    move-result v7

    .line 352
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v7, :cond_28c

    move v2, v8

    :cond_28c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 358
    .end local v7           #_result:Z
    :sswitch_291
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a5

    move v1, v8

    .line 361
    .restart local v1       #_arg0:Z
    :goto_29d
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_2a5
    move v1, v2

    .line 360
    goto :goto_29d

    .line 367
    :sswitch_2a7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v7

    .line 369
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v7, :cond_2b6

    move v2, v8

    :cond_2b6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 375
    .end local v7           #_result:Z
    :sswitch_2bb
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 381
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 383
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 385
    .local v4, _arg3:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 388
    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 389
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 395
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v4           #_arg3:Landroid/media/IAudioFocusDispatcher;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_2e9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 399
    .local v1, _arg0:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v7

    .line 401
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 407
    .end local v1           #_arg0:Landroid/media/IAudioFocusDispatcher;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_306
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 416
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_317
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33d

    .line 419
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 425
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_32a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33f

    .line 426
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 431
    .local v2, _arg1:Landroid/content/ComponentName;
    :goto_338
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto/16 :goto_9

    .line 422
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :cond_33d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_32a

    .line 429
    :cond_33f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_338

    .line 436
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_341
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_367

    .line 439
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 445
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_369

    .line 446
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 451
    .restart local v2       #_arg1:Landroid/content/ComponentName;
    :goto_362
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto/16 :goto_9

    .line 442
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :cond_367
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_354

    .line 449
    :cond_369
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_362

    .line 456
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_36b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38f

    .line 459
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 465
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_37e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v2

    .line 467
    .local v2, _arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 462
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/media/IRemoteControlClient;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_38f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_37e

    .line 473
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_391
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b1

    .line 476
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 482
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_3a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v2

    .line 483
    .restart local v2       #_arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    goto/16 :goto_9

    .line 479
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/media/IRemoteControlClient;
    :cond_3b1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_3a4

    .line 488
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_3b3
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 491
    .local v1, _arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_9

    .line 496
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_3c5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 499
    .restart local v1       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_9

    .line 504
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_3d7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 508
    .restart local v1       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 511
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_9

    .line 516
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3f1
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 519
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 525
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_402
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 528
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 534
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_413
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 537
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getActiveStreamType(I)I

    move-result v7

    .line 538
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 544
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_428
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43c

    move v1, v8

    .line 547
    .local v1, _arg0:Z
    :goto_434
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setMediaSilentMode(Z)V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_43c
    move v1, v2

    .line 546
    goto :goto_434

    .line 553
    :sswitch_43e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMediaSilentMode()Z

    move-result v7

    .line 555
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v7, :cond_44d

    move v2, v8

    :cond_44d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 561
    .end local v7           #_result:Z
    :sswitch_452
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->ismVoiceCapable()Z

    move-result v7

    .line 563
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v7, :cond_461

    move v2, v8

    :cond_461
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 569
    .end local v7           #_result:Z
    :sswitch_466
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->dismissVolumePanel()V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_474
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_54
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_87
        0x7 -> :sswitch_a3
        0x8 -> :sswitch_bb
        0x9 -> :sswitch_d0
        0xa -> :sswitch_e9
        0xb -> :sswitch_102
        0xc -> :sswitch_117
        0xd -> :sswitch_12c
        0xe -> :sswitch_141
        0xf -> :sswitch_152
        0x10 -> :sswitch_163
        0x11 -> :sswitch_178
        0x12 -> :sswitch_18d
        0x13 -> :sswitch_1a5
        0x14 -> :sswitch_1ba
        0x15 -> :sswitch_1cb
        0x16 -> :sswitch_1d9
        0x17 -> :sswitch_1eb
        0x18 -> :sswitch_1ff
        0x19 -> :sswitch_209
        0x1a -> :sswitch_213
        0x1b -> :sswitch_229
        0x1c -> :sswitch_23d
        0x1d -> :sswitch_253
        0x1e -> :sswitch_267
        0x1f -> :sswitch_27d
        0x20 -> :sswitch_291
        0x21 -> :sswitch_2a7
        0x22 -> :sswitch_2bb
        0x23 -> :sswitch_2e9
        0x24 -> :sswitch_306
        0x25 -> :sswitch_317
        0x26 -> :sswitch_341
        0x27 -> :sswitch_36b
        0x28 -> :sswitch_391
        0x29 -> :sswitch_3b3
        0x2a -> :sswitch_3c5
        0x2b -> :sswitch_3d7
        0x2c -> :sswitch_3f1
        0x2d -> :sswitch_402
        0x2e -> :sswitch_413
        0x2f -> :sswitch_428
        0x30 -> :sswitch_43e
        0x31 -> :sswitch_452
        0x32 -> :sswitch_466
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
