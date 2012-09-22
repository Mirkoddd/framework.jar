.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerVoIPCall:I = 0x34

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callInVoIP:I = 0x40

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x59

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x16

.field static final TRANSACTION_disableDataConnectivity:I = 0x18

.field static final TRANSACTION_disableLocationUpdates:I = 0x14

.field static final TRANSACTION_disableStatusBarforVoIP:I = 0x4d

.field static final TRANSACTION_enableApnType:I = 0x15

.field static final TRANSACTION_enableDataConnectivity:I = 0x17

.field static final TRANSACTION_enableLocationUpdates:I = 0x13

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActivePhoneType:I = 0x1f

.field static final TRANSACTION_getActiveVoIPCallsCount:I = 0x4a

.field static final TRANSACTION_getAtr:I = 0x5b

.field static final TRANSACTION_getCallState:I = 0x1c

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x20

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x21

.field static final TRANSACTION_getCdmaEriText:I = 0x22

.field static final TRANSACTION_getCellLocation:I = 0x1a

.field static final TRANSACTION_getCurrentVoIPNumber:I = 0x3f

.field static final TRANSACTION_getDataActivity:I = 0x1d

.field static final TRANSACTION_getDataNetworkDisable:I = 0x55

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x50

.field static final TRANSACTION_getDataState:I = 0x1e

.field static final TRANSACTION_getHandsetInfo:I = 0x29

.field static final TRANSACTION_getHoldVoIPCallsCount:I = 0x4c

.field static final TRANSACTION_getLastError:I = 0x5a

.field static final TRANSACTION_getLgt3GDataStatus:I = 0x27

.field static final TRANSACTION_getLgtOzStartPage:I = 0x28

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x2a

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1b

.field static final TRANSACTION_getNetworkType:I = 0x25

.field static final TRANSACTION_getPhoneServiceState:I = 0x4f

.field static final TRANSACTION_getServiceState:I = 0x53

.field static final TRANSACTION_getVoIPCallBaseTime:I = 0x42

.field static final TRANSACTION_getVoIPMute:I = 0x45

.field static final TRANSACTION_getVoiceMessageCount:I = 0x24

.field static final TRANSACTION_handlePinMmi:I = 0xf

.field static final TRANSACTION_hangupVoIPCall:I = 0x35

.field static final TRANSACTION_hasIccCard:I = 0x26

.field static final TRANSACTION_isAlerting:I = 0x2d

.field static final TRANSACTION_isAnyKeyMode:I = 0x2b

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x19

.field static final TRANSACTION_isDialing:I = 0x2c

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRoamingArea:I = 0x54

.field static final TRANSACTION_isShowingCallScreen:I = 0x30

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isStartVideoCall:I = 0x2f

.field static final TRANSACTION_isVideoCall:I = 0x2e

.field static final TRANSACTION_isVoIPActivated:I = 0x3e

.field static final TRANSACTION_isVoIPDialing:I = 0x3d

.field static final TRANSACTION_isVoIPIdle:I = 0x3a

.field static final TRANSACTION_isVoIPRingOrDialing:I = 0x3b

.field static final TRANSACTION_isVoIPRinging:I = 0x3c

.field static final TRANSACTION_moveVoIPToTop:I = 0x41

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x23

.field static final TRANSACTION_notifyMissedCall:I = 0x31

.field static final TRANSACTION_openIccLogicalChannel:I = 0x58

.field static final TRANSACTION_reenableStatusBarforVoIP:I = 0x4e

.field static final TRANSACTION_registerForCurrentVoIP:I = 0x32

.field static final TRANSACTION_setActiveVoIPCallsCount:I = 0x49

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x51

.field static final TRANSACTION_setDefaultSharedPreferencesForPhone:I = 0x52

.field static final TRANSACTION_setHoldVoIPCallsCount:I = 0x4b

.field static final TRANSACTION_setRadio:I = 0x11

.field static final TRANSACTION_setVoIPCallBaseTime:I = 0x43

.field static final TRANSACTION_setVoIPDialing:I = 0x37

.field static final TRANSACTION_setVoIPIdle:I = 0x39

.field static final TRANSACTION_setVoIPInCall:I = 0x38

.field static final TRANSACTION_setVoIPMute:I = 0x47

.field static final TRANSACTION_setVoIPMuteState:I = 0x46

.field static final TRANSACTION_setVoIPRinging:I = 0x36

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_switchVoIPHoldingAndActive:I = 0x44

.field static final TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x57

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x56

.field static final TRANSACTION_transmitIccSimIO:I = 0x5c

.field static final TRANSACTION_turnOnVoIPSpeaker:I = 0x48

.field static final TRANSACTION_unregisterForCurrentVoIP:I = 0x33

.field static final TRANSACTION_updateServiceLocation:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_3
    return-object v0

    .line 33
    :cond_4
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 27
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
    .line 45
    sparse-switch p1, :sswitch_data_982

    .line 865
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 49
    :sswitch_8
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x1

    goto :goto_7

    .line 54
    :sswitch_11
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v3, 0x1

    goto :goto_7

    .line 63
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_26
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v3, 0x1

    goto :goto_7

    .line 72
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_3b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v19

    .line 74
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v19, :cond_53

    const/4 v3, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v3, 0x1

    goto :goto_7

    .line 75
    :cond_53
    const/4 v3, 0x0

    goto :goto_4c

    .line 80
    .end local v19           #_result:Z
    :sswitch_55
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_76

    const/4 v4, 0x1

    .line 83
    .local v4, _arg0:Z
    :goto_63
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v19

    .line 84
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v19, :cond_78

    const/4 v3, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v3, 0x1

    goto :goto_7

    .line 82
    .end local v4           #_arg0:Z
    .end local v19           #_result:Z
    :cond_76
    const/4 v4, 0x0

    goto :goto_63

    .line 85
    .restart local v4       #_arg0:Z
    .restart local v19       #_result:Z
    :cond_78
    const/4 v3, 0x0

    goto :goto_6f

    .line 90
    .end local v4           #_arg0:Z
    .end local v19           #_result:Z
    :sswitch_7a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v19

    .line 92
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v19, :cond_93

    const/4 v3, 0x1

    :goto_8b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 93
    :cond_93
    const/4 v3, 0x0

    goto :goto_8b

    .line 98
    .end local v19           #_result:Z
    :sswitch_95
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 105
    :sswitch_a5
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 112
    :sswitch_b5
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v19

    .line 114
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v19, :cond_ce

    const/4 v3, 0x1

    :goto_c6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 115
    :cond_ce
    const/4 v3, 0x0

    goto :goto_c6

    .line 120
    .end local v19           #_result:Z
    :sswitch_d0
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v19

    .line 122
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v19, :cond_e9

    const/4 v3, 0x1

    :goto_e1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 123
    :cond_e9
    const/4 v3, 0x0

    goto :goto_e1

    .line 128
    .end local v19           #_result:Z
    :sswitch_eb
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v19

    .line 130
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v19, :cond_104

    const/4 v3, 0x1

    :goto_fc
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 131
    :cond_104
    const/4 v3, 0x0

    goto :goto_fc

    .line 136
    .end local v19           #_result:Z
    :sswitch_106
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v19

    .line 138
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v19, :cond_11f

    const/4 v3, 0x1

    :goto_117
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 139
    :cond_11f
    const/4 v3, 0x0

    goto :goto_117

    .line 144
    .end local v19           #_result:Z
    :sswitch_121
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v19

    .line 146
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v19, :cond_13a

    const/4 v3, 0x1

    :goto_132
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 147
    :cond_13a
    const/4 v3, 0x0

    goto :goto_132

    .line 152
    .end local v19           #_result:Z
    :sswitch_13c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 159
    :sswitch_14c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v19

    .line 163
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v19, :cond_16b

    const/4 v3, 0x1

    :goto_163
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 164
    :cond_16b
    const/4 v3, 0x0

    goto :goto_163

    .line 169
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:Z
    :sswitch_16d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v19

    .line 173
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v19, :cond_18c

    const/4 v3, 0x1

    :goto_184
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 174
    :cond_18c
    const/4 v3, 0x0

    goto :goto_184

    .line 179
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:Z
    :sswitch_18e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 186
    :sswitch_19e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c0

    const/4 v4, 0x1

    .line 189
    .local v4, _arg0:Z
    :goto_1ac
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v19

    .line 190
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v19, :cond_1c2

    const/4 v3, 0x1

    :goto_1b8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 188
    .end local v4           #_arg0:Z
    .end local v19           #_result:Z
    :cond_1c0
    const/4 v4, 0x0

    goto :goto_1ac

    .line 191
    .restart local v4       #_arg0:Z
    .restart local v19       #_result:Z
    :cond_1c2
    const/4 v3, 0x0

    goto :goto_1b8

    .line 196
    .end local v4           #_arg0:Z
    .end local v19           #_result:Z
    :sswitch_1c4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 203
    :sswitch_1d4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 210
    :sswitch_1e4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 217
    :sswitch_1f4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v19

    .line 221
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 227
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:I
    :sswitch_212
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 230
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v19

    .line 231
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 237
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:I
    :sswitch_230
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v19

    .line 239
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v19, :cond_249

    const/4 v3, 0x1

    :goto_241
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 240
    :cond_249
    const/4 v3, 0x0

    goto :goto_241

    .line 245
    .end local v19           #_result:Z
    :sswitch_24b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v19

    .line 247
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v19, :cond_264

    const/4 v3, 0x1

    :goto_25c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 248
    :cond_264
    const/4 v3, 0x0

    goto :goto_25c

    .line 253
    .end local v19           #_result:Z
    :sswitch_266
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v19

    .line 255
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v19, :cond_27f

    const/4 v3, 0x1

    :goto_277
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 256
    :cond_27f
    const/4 v3, 0x0

    goto :goto_277

    .line 261
    .end local v19           #_result:Z
    :sswitch_281
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v19

    .line 263
    .local v19, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v19, :cond_2a2

    .line 265
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 271
    :goto_29f
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 269
    :cond_2a2
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29f

    .line 275
    .end local v19           #_result:Landroid/os/Bundle;
    :sswitch_2a9
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v21

    .line 277
    .local v21, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 279
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 283
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2c1
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v19

    .line 285
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 291
    .end local v19           #_result:I
    :sswitch_2d9
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v19

    .line 293
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 299
    .end local v19           #_result:I
    :sswitch_2f1
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v19

    .line 301
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 307
    .end local v19           #_result:I
    :sswitch_309
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v19

    .line 309
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 315
    .end local v19           #_result:I
    :sswitch_321
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v19

    .line 317
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 323
    .end local v19           #_result:I
    :sswitch_339
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v19

    .line 325
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 331
    .end local v19           #_result:I
    :sswitch_351
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v19

    .line 333
    .local v19, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 339
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_369
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v19

    .line 341
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v19, :cond_382

    const/4 v3, 0x1

    :goto_37a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 342
    :cond_382
    const/4 v3, 0x0

    goto :goto_37a

    .line 347
    .end local v19           #_result:Z
    :sswitch_384
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v19

    .line 349
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 355
    .end local v19           #_result:I
    :sswitch_39c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v19

    .line 357
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 363
    .end local v19           #_result:I
    :sswitch_3b4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v19

    .line 365
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v19, :cond_3cd

    const/4 v3, 0x1

    :goto_3c5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 366
    :cond_3cd
    const/4 v3, 0x0

    goto :goto_3c5

    .line 371
    .end local v19           #_result:Z
    :sswitch_3cf
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 374
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgt3GDataStatus(I)Ljava/lang/String;

    move-result-object v19

    .line 375
    .local v19, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 381
    .end local v4           #_arg0:I
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_3ed
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgtOzStartPage()Ljava/lang/String;

    move-result-object v19

    .line 383
    .restart local v19       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 389
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_405
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 393
    .restart local v19       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 399
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_423
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v19

    .line 401
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 407
    .end local v19           #_result:I
    :sswitch_43b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAnyKeyMode()Z

    move-result v19

    .line 409
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v19, :cond_454

    const/4 v3, 0x1

    :goto_44c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 410
    :cond_454
    const/4 v3, 0x0

    goto :goto_44c

    .line 415
    .end local v19           #_result:Z
    :sswitch_456
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDialing()Z

    move-result v19

    .line 417
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v19, :cond_46f

    const/4 v3, 0x1

    :goto_467
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 418
    :cond_46f
    const/4 v3, 0x0

    goto :goto_467

    .line 423
    .end local v19           #_result:Z
    :sswitch_471
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAlerting()Z

    move-result v19

    .line 425
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v19, :cond_48a

    const/4 v3, 0x1

    :goto_482
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 426
    :cond_48a
    const/4 v3, 0x0

    goto :goto_482

    .line 431
    .end local v19           #_result:Z
    :sswitch_48c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCall()Z

    move-result v19

    .line 433
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v19, :cond_4a5

    const/4 v3, 0x1

    :goto_49d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 434
    :cond_4a5
    const/4 v3, 0x0

    goto :goto_49d

    .line 439
    .end local v19           #_result:Z
    :sswitch_4a7
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isStartVideoCall()Z

    move-result v19

    .line 441
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v19, :cond_4c0

    const/4 v3, 0x1

    :goto_4b8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 442
    :cond_4c0
    const/4 v3, 0x0

    goto :goto_4b8

    .line 447
    .end local v19           #_result:Z
    :sswitch_4c2
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isShowingCallScreen()Z

    move-result v19

    .line 449
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v19, :cond_4db

    const/4 v3, 0x1

    :goto_4d3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 450
    :cond_4db
    const/4 v3, 0x0

    goto :goto_4d3

    .line 455
    .end local v19           #_result:Z
    :sswitch_4dd
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .local v7, _arg3:J
    move-object/from16 v3, p0

    .line 464
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 470
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    :sswitch_4ff
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 474
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 476
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 477
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCurrentVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 483
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_51d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCurrentVoIP()V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 490
    :sswitch_52d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerVoIPCall()Z

    move-result v19

    .line 492
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v19, :cond_546

    const/4 v3, 0x1

    :goto_53e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 493
    :cond_546
    const/4 v3, 0x0

    goto :goto_53e

    .line 498
    .end local v19           #_result:Z
    :sswitch_548
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hangupVoIPCall()Z

    move-result v19

    .line 500
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v19, :cond_561

    const/4 v3, 0x1

    :goto_559
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 501
    :cond_561
    const/4 v3, 0x0

    goto :goto_559

    .line 506
    .end local v19           #_result:Z
    :sswitch_563
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPRinging()V

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 513
    :sswitch_573
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPDialing()V

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 520
    :sswitch_583
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPInCall()V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 527
    :sswitch_593
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPIdle()V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 534
    :sswitch_5a3
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPIdle()Z

    move-result v19

    .line 536
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    if-eqz v19, :cond_5bc

    const/4 v3, 0x1

    :goto_5b4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 537
    :cond_5bc
    const/4 v3, 0x0

    goto :goto_5b4

    .line 542
    .end local v19           #_result:Z
    :sswitch_5be
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPRingOrDialing()Z

    move-result v19

    .line 544
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v19, :cond_5d7

    const/4 v3, 0x1

    :goto_5cf
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 545
    :cond_5d7
    const/4 v3, 0x0

    goto :goto_5cf

    .line 550
    .end local v19           #_result:Z
    :sswitch_5d9
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPRinging()Z

    move-result v19

    .line 552
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    if-eqz v19, :cond_5f2

    const/4 v3, 0x1

    :goto_5ea
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 553
    :cond_5f2
    const/4 v3, 0x0

    goto :goto_5ea

    .line 558
    .end local v19           #_result:Z
    :sswitch_5f4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPDialing()Z

    move-result v19

    .line 560
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v19, :cond_60d

    const/4 v3, 0x1

    :goto_605
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 561
    :cond_60d
    const/4 v3, 0x0

    goto :goto_605

    .line 566
    .end local v19           #_result:Z
    :sswitch_60f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPActivated()Z

    move-result v19

    .line 568
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v19, :cond_628

    const/4 v3, 0x1

    :goto_620
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 569
    :cond_628
    const/4 v3, 0x0

    goto :goto_620

    .line 574
    .end local v19           #_result:Z
    :sswitch_62a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentVoIPNumber()Ljava/lang/String;

    move-result-object v19

    .line 576
    .local v19, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 582
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_642
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 585
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->callInVoIP(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 591
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_658
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->moveVoIPToTop()Z

    move-result v19

    .line 593
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v19, :cond_671

    const/4 v3, 0x1

    :goto_669
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 594
    :cond_671
    const/4 v3, 0x0

    goto :goto_669

    .line 599
    .end local v19           #_result:Z
    :sswitch_673
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoIPCallBaseTime()J

    move-result-wide v19

    .line 601
    .local v19, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    move-object/from16 v0, p3

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 603
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 607
    .end local v19           #_result:J
    :sswitch_68b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 610
    .local v17, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPCallBaseTime(J)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 616
    .end local v17           #_arg0:J
    :sswitch_6a3
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->switchVoIPHoldingAndActive()Z

    move-result v19

    .line 618
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v19, :cond_6bc

    const/4 v3, 0x1

    :goto_6b4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 619
    :cond_6bc
    const/4 v3, 0x0

    goto :goto_6b4

    .line 624
    .end local v19           #_result:Z
    :sswitch_6be
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoIPMute()Z

    move-result v19

    .line 626
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    if-eqz v19, :cond_6d7

    const/4 v3, 0x1

    :goto_6cf
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 627
    :cond_6d7
    const/4 v3, 0x0

    goto :goto_6cf

    .line 632
    .end local v19           #_result:Z
    :sswitch_6d9
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6f2

    const/4 v4, 0x1

    .line 635
    .local v4, _arg0:Z
    :goto_6e7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPMuteState(Z)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 634
    .end local v4           #_arg0:Z
    :cond_6f2
    const/4 v4, 0x0

    goto :goto_6e7

    .line 641
    :sswitch_6f4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_716

    const/4 v4, 0x1

    .line 644
    .restart local v4       #_arg0:Z
    :goto_702
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPMute(Z)Z

    move-result v19

    .line 645
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    if-eqz v19, :cond_718

    const/4 v3, 0x1

    :goto_70e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 643
    .end local v4           #_arg0:Z
    .end local v19           #_result:Z
    :cond_716
    const/4 v4, 0x0

    goto :goto_702

    .line 646
    .restart local v4       #_arg0:Z
    .restart local v19       #_result:Z
    :cond_718
    const/4 v3, 0x0

    goto :goto_70e

    .line 651
    .end local v4           #_arg0:Z
    .end local v19           #_result:Z
    :sswitch_71a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_733

    const/4 v4, 0x1

    .line 654
    .restart local v4       #_arg0:Z
    :goto_728
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->turnOnVoIPSpeaker(Z)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 653
    .end local v4           #_arg0:Z
    :cond_733
    const/4 v4, 0x0

    goto :goto_728

    .line 660
    :sswitch_735
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 663
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setActiveVoIPCallsCount(I)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 669
    .end local v4           #_arg0:I
    :sswitch_74b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveVoIPCallsCount()I

    move-result v19

    .line 671
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 677
    .end local v19           #_result:I
    :sswitch_763
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 680
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setHoldVoIPCallsCount(I)V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 686
    .end local v4           #_arg0:I
    :sswitch_779
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getHoldVoIPCallsCount()I

    move-result v19

    .line 688
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 694
    .end local v19           #_result:I
    :sswitch_791
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableStatusBarforVoIP()V

    .line 696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 701
    :sswitch_7a1
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->reenableStatusBarforVoIP()V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 708
    :sswitch_7b1
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneServiceState()I

    move-result v19

    .line 710
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 716
    .end local v19           #_result:I
    :sswitch_7c9
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabled()Z

    move-result v19

    .line 718
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    if-eqz v19, :cond_7e2

    const/4 v3, 0x1

    :goto_7da
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 719
    :cond_7e2
    const/4 v3, 0x0

    goto :goto_7da

    .line 724
    .end local v19           #_result:Z
    :sswitch_7e4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7fd

    const/4 v4, 0x1

    .line 727
    .local v4, _arg0:Z
    :goto_7f2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(Z)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 726
    .end local v4           #_arg0:Z
    :cond_7fd
    const/4 v4, 0x0

    goto :goto_7f2

    .line 733
    :sswitch_7ff
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_81c

    const/4 v5, 0x1

    .line 738
    .local v5, _arg1:Z
    :goto_811
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultSharedPreferencesForPhone(Ljava/lang/String;Z)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 737
    .end local v5           #_arg1:Z
    :cond_81c
    const/4 v5, 0x0

    goto :goto_811

    .line 744
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_81e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v19

    .line 746
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 752
    .end local v19           #_result:I
    :sswitch_836
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRoamingArea()Z

    move-result v19

    .line 754
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    if-eqz v19, :cond_84f

    const/4 v3, 0x1

    :goto_847
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 755
    :cond_84f
    const/4 v3, 0x0

    goto :goto_847

    .line 760
    .end local v19           #_result:Z
    :sswitch_851
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkDisable()Z

    move-result v19

    .line 762
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    if-eqz v19, :cond_86a

    const/4 v3, 0x1

    :goto_862
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 763
    :cond_86a
    const/4 v3, 0x0

    goto :goto_862

    .line 768
    .end local v19           #_result:Z
    :sswitch_86c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 772
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 774
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 776
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 778
    .local v7, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 780
    .local v14, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 782
    .local v15, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, _arg6:Ljava/lang/String;
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 783
    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 784
    .local v19, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 790
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v14           #_arg4:I
    .end local v15           #_arg5:I
    .end local v16           #_arg6:Ljava/lang/String;
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_8a6
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 794
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 796
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 798
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 800
    .restart local v7       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 802
    .restart local v14       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, _arg5:Ljava/lang/String;
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 803
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 804
    .restart local v19       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 810
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v14           #_arg4:I
    .end local v15           #_arg5:Ljava/lang/String;
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_8dc
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v19

    .line 814
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 820
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:I
    :sswitch_8fa
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 823
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v19

    .line 824
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    if-eqz v19, :cond_919

    const/4 v3, 0x1

    :goto_911
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 825
    :cond_919
    const/4 v3, 0x0

    goto :goto_911

    .line 830
    .end local v4           #_arg0:I
    .end local v19           #_result:Z
    :sswitch_91b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastError()I

    move-result v19

    .line 832
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 838
    .end local v19           #_result:I
    :sswitch_933
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v19

    .line 840
    .local v19, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 842
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 846
    .end local v19           #_result:[B
    :sswitch_94b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 850
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 852
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 854
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 856
    .restart local v7       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 858
    .restart local v14       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15       #_arg5:Ljava/lang/String;
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 859
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v19

    .line 860
    .restart local v19       #_result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 862
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 45
    nop

    :sswitch_data_982
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_55
        0x5 -> :sswitch_7a
        0x6 -> :sswitch_95
        0x7 -> :sswitch_a5
        0x8 -> :sswitch_b5
        0x9 -> :sswitch_d0
        0xa -> :sswitch_eb
        0xb -> :sswitch_106
        0xc -> :sswitch_121
        0xd -> :sswitch_13c
        0xe -> :sswitch_14c
        0xf -> :sswitch_16d
        0x10 -> :sswitch_18e
        0x11 -> :sswitch_19e
        0x12 -> :sswitch_1c4
        0x13 -> :sswitch_1d4
        0x14 -> :sswitch_1e4
        0x15 -> :sswitch_1f4
        0x16 -> :sswitch_212
        0x17 -> :sswitch_230
        0x18 -> :sswitch_24b
        0x19 -> :sswitch_266
        0x1a -> :sswitch_281
        0x1b -> :sswitch_2a9
        0x1c -> :sswitch_2c1
        0x1d -> :sswitch_2d9
        0x1e -> :sswitch_2f1
        0x1f -> :sswitch_309
        0x20 -> :sswitch_321
        0x21 -> :sswitch_339
        0x22 -> :sswitch_351
        0x23 -> :sswitch_369
        0x24 -> :sswitch_384
        0x25 -> :sswitch_39c
        0x26 -> :sswitch_3b4
        0x27 -> :sswitch_3cf
        0x28 -> :sswitch_3ed
        0x29 -> :sswitch_405
        0x2a -> :sswitch_423
        0x2b -> :sswitch_43b
        0x2c -> :sswitch_456
        0x2d -> :sswitch_471
        0x2e -> :sswitch_48c
        0x2f -> :sswitch_4a7
        0x30 -> :sswitch_4c2
        0x31 -> :sswitch_4dd
        0x32 -> :sswitch_4ff
        0x33 -> :sswitch_51d
        0x34 -> :sswitch_52d
        0x35 -> :sswitch_548
        0x36 -> :sswitch_563
        0x37 -> :sswitch_573
        0x38 -> :sswitch_583
        0x39 -> :sswitch_593
        0x3a -> :sswitch_5a3
        0x3b -> :sswitch_5be
        0x3c -> :sswitch_5d9
        0x3d -> :sswitch_5f4
        0x3e -> :sswitch_60f
        0x3f -> :sswitch_62a
        0x40 -> :sswitch_642
        0x41 -> :sswitch_658
        0x42 -> :sswitch_673
        0x43 -> :sswitch_68b
        0x44 -> :sswitch_6a3
        0x45 -> :sswitch_6be
        0x46 -> :sswitch_6d9
        0x47 -> :sswitch_6f4
        0x48 -> :sswitch_71a
        0x49 -> :sswitch_735
        0x4a -> :sswitch_74b
        0x4b -> :sswitch_763
        0x4c -> :sswitch_779
        0x4d -> :sswitch_791
        0x4e -> :sswitch_7a1
        0x4f -> :sswitch_7b1
        0x50 -> :sswitch_7c9
        0x51 -> :sswitch_7e4
        0x52 -> :sswitch_7ff
        0x53 -> :sswitch_81e
        0x54 -> :sswitch_836
        0x55 -> :sswitch_851
        0x56 -> :sswitch_86c
        0x57 -> :sswitch_8a6
        0x58 -> :sswitch_8dc
        0x59 -> :sswitch_8fa
        0x5a -> :sswitch_91b
        0x5b -> :sswitch_933
        0x5c -> :sswitch_94b
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
