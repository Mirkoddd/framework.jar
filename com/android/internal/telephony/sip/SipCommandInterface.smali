.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 136
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 475
    return-void
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 472
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "ackPdu"
    .parameter "result"

    .prologue
    .line 232
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 228
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 224
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 319
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 69
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 74
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 62
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 65
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 512
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 507
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPass"
    .parameter "newPass"
    .parameter "result"

    .prologue
    .line 542
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 123
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 4
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 214
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 456
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 195
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 192
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 89
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 93
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 459
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 462
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 428
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 142
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 272
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 293
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 395
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 249
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 387
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 419
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 375
    return-void
.end method

.method public getCdmaSystemProperties(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "sysPorpertyID"
    .parameter "response"

    .prologue
    .line 446
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 80
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 86
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 167
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 392
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 378
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 99
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 102
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 96
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 47
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 145
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 152
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 149
    return-void
.end method

.method public getMpsr(Landroid/os/Message;)V
    .registers 2
    .parameter "onComplete"

    .prologue
    .line 434
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 158
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 356
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 269
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 170
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 468
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .registers 3
    .parameter "fileid"
    .parameter "result"

    .prologue
    .line 465
    return-void
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 286
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 353
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 130
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .registers 4
    .parameter "num_lock_type"
    .parameter "lock_type"
    .parameter "result"

    .prologue
    .line 453
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 161
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 362
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 488
    return-void
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 523
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 478
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 164
    return-void
.end method

.method public getWipiSysInfo(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 531
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 3
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 347
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 106
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 117
    return-void
.end method

.method public hangupVT(ILandroid/os/Message;)V
    .registers 3
    .parameter "errCause"
    .parameter "result"

    .prologue
    .line 110
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 114
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .registers 3
    .parameter "channel"
    .parameter "response"

    .prologue
    .line 246
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "response"

    .prologue
    .line 240
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 236
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "AID"
    .parameter "response"

    .prologue
    .line 243
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 325
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 328
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 334
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 283
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 280
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 3
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 255
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 401
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 298
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 303
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 410
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 491
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 139
    return-void
.end method

.method public releaseWakeLock()V
    .registers 1

    .prologue
    .line 528
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3
    .parameter "available"
    .parameter "result"

    .prologue
    .line 368
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 371
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 515
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 322
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 183
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 416
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 3
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 189
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 173
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .registers 5
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 519
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 340
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 343
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 186
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "prefMode"
    .parameter "result"

    .prologue
    .line 539
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 337
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 316
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 133
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 331
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 3
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 252
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 276
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 4
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 259
    return-void
.end method

.method public setCbsOnOff([BLandroid/os/Message;)V
    .registers 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 535
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 425
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .registers 3
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 422
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 404
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .registers 3
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 407
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 308
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 313
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 384
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .parameter "config"
    .parameter "response"

    .prologue
    .line 381
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 359
    return-void
.end method

.method public setMpsr(ILandroid/os/Message;)V
    .registers 3
    .parameter "min"
    .parameter "onComplete"

    .prologue
    .line 437
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 155
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 262
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 266
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 44
    return-void
.end method

.method public setPhoneType(I)V
    .registers 2
    .parameter "phoneType"

    .prologue
    .line 398
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .registers 9
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 290
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 350
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 127
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 3
    .parameter "on"
    .parameter "result"

    .prologue
    .line 217
    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 451
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 365
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 220
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 413
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 206
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .registers 10
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"
    .parameter "cid"

    .prologue
    .line 211
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 176
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 179
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "passwd"
    .parameter "result"

    .prologue
    .line 545
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 50
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 56
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "pin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 499
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "pin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 482
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 53
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "puk"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 59
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 503
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 495
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 77
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 120
    return-void
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 485
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 201
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 198
    return-void
.end method
