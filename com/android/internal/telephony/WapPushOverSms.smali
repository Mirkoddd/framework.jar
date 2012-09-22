.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private PushOriginalAddress:Ljava/lang/String;

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 5
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 64
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 134
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 135
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 138
    return-void
.end method

.method private dispatchWapPdu_CON013([BIILjava/lang/String;IIZ)V
    .registers 14
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "isVaildHeader"

    .prologue
    const/4 v5, 0x0

    .line 664
    add-int v1, p5, p6

    .line 665
    .local v1, dataIndex:I
    array-length v3, p1

    sub-int/2addr v3, v1

    new-array v0, v3, [B

    .line 666
    .local v0, data:[B
    array-length v3, v0

    invoke-static {p1, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string/jumbo v3, "transactionId"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string/jumbo v3, "pduType"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 675
    if-nez p7, :cond_30

    .line 676
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 679
    :goto_2f
    return-void

    .line 678
    :cond_30
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .registers 6
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 729
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private dispatchWapPdu_DSNoti([BI)V
    .registers 6
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 786
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "application/vnd.syncml.ds.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 791
    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 792
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    const-string v1, "WAP PUSH"

    const-string v2, "ds noti intent is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method private dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I
    .registers 20
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 803
    const/4 v6, 0x1

    .line 805
    .local v6, ret:I
    new-array v4, p5, [B

    .line 806
    .local v4, header:[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p1, p4, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    add-int v3, p4, p5

    .line 808
    .local v3, dataIndex:I
    array-length v7, p1

    sub-int/2addr v7, v3

    new-array v2, v7, [B

    .line 809
    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {p1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v7, "transactionId"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    const-string/jumbo v7, "pduType"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    const-string v7, "header"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 815
    const-string v7, "data"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 816
    const-string v7, "applicationId"

    move-wide/from16 v0, p8

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 819
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive EMN : mimeType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " binaryContentType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " applicationId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sparse-switch p7, :sswitch_data_14e

    .line 878
    :goto_6c
    return v6

    .line 823
    :sswitch_6d
    const-string v7, "application/vnd.docomo.pf"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-wide/32 v7, 0x9056

    cmp-long v7, p8, v7

    if-nez v7, :cond_92

    .line 826
    const-string v7, "com.nttdocomo.email.service"

    const-string v8, "com.nttdocomo.email.service.ImodeMailService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_8a

    .line 828
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 829
    const/4 v6, -0x1

    .line 831
    :cond_8a
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : i-mode.net"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 834
    :cond_92
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 839
    :sswitch_ad
    const-string v7, "application/vnd.syncml.notification"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-wide/16 v7, 0x7

    cmp-long v7, p8, v7

    if-nez v7, :cond_d3

    .line 842
    const-string/jumbo v7, "jp.co.nttdocomo.fota"

    const-string/jumbo v8, "jp.co.nttdocomo.fota.SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_cb

    .line 844
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 845
    const/4 v6, -0x1

    .line 847
    :cond_cb
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : fota"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 850
    :cond_d3
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 855
    :sswitch_ef
    const-string v7, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const-wide/32 v7, 0x905c

    cmp-long v7, p8, v7

    if-nez v7, :cond_117

    .line 858
    const-string/jumbo v7, "jp.co.nttdocomo.carriermail"

    const-string/jumbo v8, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_10e

    .line 860
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 861
    const/4 v6, -0x1

    .line 863
    :cond_10e
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : Carrier Mail"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 865
    :cond_117
    const-wide/16 v7, 0x9

    cmp-long v7, p8, v7

    if-nez v7, :cond_132

    .line 867
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v7, :cond_129

    .line 868
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v8, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 869
    const/4 v6, -0x1

    .line 871
    :cond_129
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : mopera U"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 874
    :cond_132
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 821
    :sswitch_data_14e
    .sparse-switch
        0x44 -> :sswitch_ad
        0x30a -> :sswitch_ef
        0x310 -> :sswitch_6d
    .end sparse-switch
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .registers 12
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 705
    new-array v2, p5, [B

    .line 706
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    add-int v1, p4, p5

    .line 708
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 709
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 711
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 716
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 719
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .registers 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 685
    new-array v0, p5, [B

    .line 686
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 691
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 693
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 700
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .registers 7
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 741
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 747
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method private dispatchWapPdu_SLC([BIIIILjava/lang/String;IJ)I
    .registers 20
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 894
    const/4 v6, 0x1

    .line 896
    .local v6, ret:I
    new-array v4, p5, [B

    .line 897
    .local v4, header:[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p1, p4, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 898
    add-int v3, p4, p5

    .line 899
    .local v3, dataIndex:I
    array-length v7, p1

    sub-int/2addr v7, v3

    new-array v2, v7, [B

    .line 900
    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {p1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v7, "transactionId"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 904
    const-string/jumbo v7, "pduType"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const-string v7, "header"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 906
    const-string v7, "data"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 907
    const-string v7, "applicationId"

    move-wide/from16 v0, p8

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 910
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive SLC : mimeType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " binaryContentType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " applicationId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v7, "application/vnd.syncml+wbxml"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    const-wide/32 v7, 0x905f

    cmp-long v7, p8, v7

    if-nez v7, :cond_87

    .line 915
    const-string v7, "com.nttdocomo.android.syncmlapp"

    const-string v8, "com.nttdocomo.android.syncmlapp.SyncML_SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_86

    .line 917
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 918
    const/4 v6, -0x1

    .line 925
    :cond_86
    :goto_86
    return v6

    .line 922
    :cond_87
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .registers 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 641
    new-array v2, p6, [B

    .line 642
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    add-int v1, p5, p6

    .line 646
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 647
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 653
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 654
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 657
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 658
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .registers 56
    .parameter "pdu"

    .prologue
    .line 167
    const/16 v38, 0x0

    .line 168
    .local v38, index:I
    add-int/lit8 v39, v38, 0x1

    .end local v38           #index:I
    .local v39, index:I
    aget-byte v4, p1, v38

    and-int/lit16 v6, v4, 0xff

    .line 169
    .local v6, transactionId:I
    add-int/lit8 v38, v39, 0x1

    .end local v39           #index:I
    .restart local v38       #index:I
    aget-byte v4, p1, v39

    and-int/lit16 v7, v4, 0xff

    .line 170
    .local v7, pduType:I
    const/4 v9, 0x0

    .line 172
    .local v9, headerLength:I
    const/4 v4, 0x6

    if-eq v7, v4, :cond_17

    const/4 v4, 0x7

    if-eq v7, v4, :cond_17

    .line 175
    const/4 v4, 0x1

    .line 636
    :goto_16
    return v4

    .line 178
    :cond_17
    new-instance v4, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_30

    .line 188
    const/4 v4, 0x2

    goto :goto_16

    .line 190
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v9, v4

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/lit8 v38, v4, 0x2

    .line 193
    move/from16 v8, v38

    .line 207
    .local v8, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_53

    .line 209
    const/4 v4, 0x2

    goto :goto_16

    .line 212
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v14

    .line 213
    .local v14, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    .line 214
    .local v28, binaryContentType:J
    move/from16 v40, v38

    .line 216
    .local v40, index_con013:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v11, v4

    .line 222
    .local v11, iBinaryContentType:I
    if-nez v14, :cond_151

    .line 224
    sparse-switch v11, :sswitch_data_45a

    .line 295
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received PDU. Unsupported Content-Type = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v4, 0x1

    goto :goto_16

    .line 226
    :sswitch_8f
    const-string v14, "application/vnd.oma.drm.rights+xml"

    .line 359
    :goto_91
    const/16 v45, 0x0

    .line 360
    .local v45, isValidContentType:Z
    const/16 v44, 0x0

    .line 361
    .local v44, isValidApplicationID:Z
    const/16 v43, 0x0

    .line 363
    .local v43, isSULPINITMessage:Z
    const/16 v24, 0x0

    .line 366
    .local v24, Delta_Index:I
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 367
    const/16 v43, 0x1

    .line 369
    aget-byte v4, p1, v40

    const/16 v5, 0x61

    if-ge v4, v5, :cond_208

    .line 370
    aget-byte v4, p1, v40

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c8

    add-int/lit8 v4, v40, 0x1

    aget-byte v4, p1, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c8

    add-int/lit8 v4, v40, 0x2

    aget-byte v4, p1, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c8

    add-int/lit8 v4, v40, 0x3

    aget-byte v4, p1, v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_c8

    .line 371
    const/16 v45, 0x1

    .line 372
    const/16 v24, 0x4

    .line 391
    :cond_c8
    :goto_c8
    if-eqz v45, :cond_10c

    add-int v4, v40, v24

    aget-byte v4, p1, v4

    const/16 v5, -0x51

    if-ne v4, v5, :cond_10c

    .line 392
    add-int/lit8 v4, v40, -0x1

    aget-byte v4, p1, v4

    sub-int v31, v4, v24

    .line 393
    .local v31, d_Length:I
    add-int/lit8 v4, v40, -0x1

    aget-byte v35, p1, v4

    .line 394
    .local v35, h_Length:I
    const/16 v25, 0x19

    .line 396
    .local v25, Delta_index2:I
    const/4 v4, 0x3

    move/from16 v0, v31

    if-le v0, v4, :cond_266

    .line 397
    add-int v4, v40, v24

    add-int/lit8 v51, v4, 0x1

    .line 398
    .local v51, startIndex:I
    new-instance v26, Ljava/lang/String;

    const-string/jumbo v4, "x-oma-application:ulp.ua"

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 399
    .local v26, appID:Ljava/lang/String;
    new-instance v47, Ljava/lang/String;

    const/16 v4, 0x18

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 401
    .local v47, pdu_app:Ljava/lang/String;
    if-eqz v47, :cond_10c

    .line 404
    move-object/from16 v0, v26

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 405
    const/16 v44, 0x1

    .line 420
    .end local v25           #Delta_index2:I
    .end local v26           #appID:Ljava/lang/String;
    .end local v31           #d_Length:I
    .end local v35           #h_Length:I
    .end local v47           #pdu_app:Ljava/lang/String;
    .end local v51           #startIndex:I
    :cond_10c
    :goto_10c
    const/16 v33, 0x0

    .line 421
    .local v33, dispatchedByApplication:Z
    sparse-switch v11, :sswitch_data_49c

    .line 517
    .end local v11           #iBinaryContentType:I
    :goto_111
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_2dc

    .line 518
    const/4 v4, -0x1

    goto/16 :goto_16

    .line 229
    .end local v24           #Delta_Index:I
    .end local v33           #dispatchedByApplication:Z
    .end local v43           #isSULPINITMessage:Z
    .end local v44           #isValidApplicationID:Z
    .end local v45           #isValidContentType:Z
    .restart local v11       #iBinaryContentType:I
    :sswitch_119
    const-string v14, "application/vnd.oma.drm.rights+wbxml"

    .line 230
    goto/16 :goto_91

    .line 232
    :sswitch_11d
    const-string v14, "application/vnd.wap.sic"

    .line 233
    goto/16 :goto_91

    .line 235
    :sswitch_121
    const-string v14, "application/vnd.wap.slc"

    .line 236
    goto/16 :goto_91

    .line 238
    :sswitch_125
    const-string v14, "application/vnd.wap.coc"

    .line 239
    goto/16 :goto_91

    .line 241
    :sswitch_129
    const-string v14, "application/vnd.wap.mms-message"

    .line 242
    goto/16 :goto_91

    .line 244
    :sswitch_12d
    const-string v14, "application/vnd.omaloc-supl-init"

    .line 245
    goto/16 :goto_91

    .line 247
    :sswitch_131
    const-string v14, "application/vnd.docomo.pf"

    .line 248
    goto/16 :goto_91

    .line 256
    :sswitch_135
    const-string v14, "application/vnd.syncml.notification"

    .line 257
    goto/16 :goto_91

    .line 262
    :sswitch_139
    const-string v14, "application/vnd.syncml.ds.notification"

    .line 263
    goto/16 :goto_91

    .line 266
    :sswitch_13d
    const-string v14, "application/vnd.wap.connectivity-wbxml"

    .line 267
    goto/16 :goto_91

    .line 269
    :sswitch_141
    const-string v14, "application/vnd.syncml.dm+wbxml"

    .line 270
    goto/16 :goto_91

    .line 272
    :sswitch_145
    const-string v14, "application/vnd.syncml.dm+xml"

    .line 273
    goto/16 :goto_91

    .line 277
    :sswitch_149
    const-string v14, "application/vnd.wap.emn+wbxml"

    .line 278
    goto/16 :goto_91

    .line 290
    :sswitch_14d
    const-string v14, "application/vnd.syncml+wbxml"

    .line 291
    goto/16 :goto_91

    .line 301
    :cond_151
    const-string v4, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 302
    const/16 v11, 0x4a

    goto/16 :goto_91

    .line 303
    :cond_15d
    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_169

    .line 304
    const/16 v11, 0x4b

    goto/16 :goto_91

    .line 305
    :cond_169
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_175

    .line 306
    const/16 v11, 0x2e

    goto/16 :goto_91

    .line 307
    :cond_175
    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    .line 308
    const/16 v11, 0x30

    goto/16 :goto_91

    .line 309
    :cond_181
    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 310
    const/16 v11, 0x32

    goto/16 :goto_91

    .line 311
    :cond_18d
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_199

    .line 312
    const/16 v11, 0x3e

    goto/16 :goto_91

    .line 313
    :cond_199
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 314
    const/16 v11, 0x312

    goto/16 :goto_91

    .line 315
    :cond_1a5
    const-string v4, "application/vnd.docomo.pf"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b1

    .line 316
    const/16 v11, 0x310

    goto/16 :goto_91

    .line 322
    :cond_1b1
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bd

    .line 323
    const/16 v11, 0x44

    goto/16 :goto_91

    .line 324
    :cond_1bd
    const-string v4, "application/vnd.syncml.ds.notification"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c9

    .line 325
    const/16 v11, 0x4e

    goto/16 :goto_91

    .line 328
    :cond_1c9
    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d5

    .line 329
    const/16 v11, 0x36

    goto/16 :goto_91

    .line 330
    :cond_1d5
    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e1

    .line 331
    const/16 v11, 0x42

    goto/16 :goto_91

    .line 332
    :cond_1e1
    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ed

    .line 333
    const/16 v11, 0x43

    goto/16 :goto_91

    .line 353
    :cond_1ed
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received PDU. Unknown Content-Type = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v4, 0x1

    goto/16 :goto_16

    .line 377
    .restart local v24       #Delta_Index:I
    .restart local v43       #isSULPINITMessage:Z
    .restart local v44       #isValidApplicationID:Z
    .restart local v45       #isValidContentType:Z
    :cond_208
    const/16 v24, 0x21

    .line 378
    new-instance v23, Ljava/lang/String;

    const-string v4, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 379
    .local v23, CType:Ljava/lang/String;
    new-instance v46, Ljava/lang/String;

    const/16 v4, 0x20

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 380
    .local v46, pdu_CType:Ljava/lang/String;
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content Type : pdu = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v10, p1, v40

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v10, v40, 0x1

    aget-byte v10, p1, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v10, v40, 0x2

    aget-byte v10, p1, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz v46, :cond_c8

    .line 384
    move-object/from16 v0, v46

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 385
    const/16 v45, 0x1

    goto/16 :goto_c8

    .line 411
    .end local v23           #CType:Ljava/lang/String;
    .end local v46           #pdu_CType:Ljava/lang/String;
    .restart local v25       #Delta_index2:I
    .restart local v31       #d_Length:I
    .restart local v35       #h_Length:I
    :cond_266
    add-int v4, v40, v24

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    const/16 v5, -0x70

    if-ne v4, v5, :cond_10c

    .line 412
    const/16 v44, 0x1

    goto/16 :goto_10c

    .end local v25           #Delta_index2:I
    .end local v31           #d_Length:I
    .end local v35           #h_Length:I
    .restart local v33       #dispatchedByApplication:Z
    :sswitch_274
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 423
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 424
    const/16 v33, 0x1

    .line 425
    goto/16 :goto_111

    :sswitch_27f
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 427
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 428
    const/16 v33, 0x1

    .line 429
    goto/16 :goto_111

    .line 435
    :sswitch_28a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BI)V

    .line 436
    const/16 v33, 0x1

    .line 437
    goto/16 :goto_111

    .line 445
    :sswitch_295
    const/16 v33, 0x0

    .line 446
    goto/16 :goto_111

    :sswitch_299
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v12, v6

    move v13, v7

    move v15, v8

    move/from16 v16, v9

    .line 450
    invoke-direct/range {v10 .. v16}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 452
    .end local v11           #iBinaryContentType:I
    const/16 v33, 0x1

    .line 453
    goto/16 :goto_111

    .line 463
    .restart local v11       #iBinaryContentType:I
    :sswitch_2a9
    const/16 v33, 0x1

    .line 465
    goto/16 :goto_111

    .line 472
    :sswitch_2ad
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v38

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v37

    .line 473
    .local v37, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 475
    .local v27, applicationIdObj:Ljava/lang/Object;
    const-wide/16 v12, 0x0

    .line 476
    .local v12, applicationId:J
    move-object/from16 v0, v27

    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_2d1

    .line 477
    check-cast v27, Ljava/lang/Long;

    .end local v27           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_2d1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v10, v14

    .line 479
    invoke-direct/range {v4 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I

    move-result v4

    goto/16 :goto_16

    .line 526
    .end local v11           #iBinaryContentType:I
    .end local v12           #applicationId:J
    .end local v37           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_2dc
    if-nez v33, :cond_2fa

    .line 527
    if-eqz v43, :cond_2fa

    .line 528
    if-eqz v44, :cond_2e4

    if-nez v45, :cond_2fa

    .line 529
    :cond_2e4
    const/16 v22, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v14

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-direct/range {v15 .. v22}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_CON013([BIILjava/lang/String;IIZ)V

    .line 530
    const/4 v4, -0x1

    goto/16 :goto_16

    .line 538
    :cond_2fa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v38, v38, v4

    .line 540
    new-array v0, v9, [B

    move-object/from16 v36, v0

    .line 541
    .local v36, header:[B
    const/4 v4, 0x0

    move-object/from16 v0, v36

    array-length v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-static {v0, v8, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    if-eqz v14, :cond_371

    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_371

    .line 546
    move-object/from16 v42, p1

    .line 559
    .local v42, intentData:[B
    :goto_31f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    add-int v5, v38, v9

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v38

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_3de

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v38, v0

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v52

    .line 563
    .local v52, wapAppId:Ljava/lang/String;
    if-nez v52, :cond_35a

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v52

    .line 567
    :cond_35a
    if-nez v14, :cond_38a

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    .line 572
    .local v30, contentType:Ljava/lang/String;
    :goto_360
    const/16 v50, 0x1

    .line 573
    .local v50, processFurther:Z
    :try_start_362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_369
    .catch Landroid/os/RemoteException; {:try_start_362 .. :try_end_369} :catch_3dd

    move-result-object v53

    .line 575
    .local v53, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v53, :cond_38d

    .line 593
    :cond_36c
    :goto_36c
    if-nez v50, :cond_3de

    .line 594
    const/4 v4, 0x1

    goto/16 :goto_16

    .line 548
    .end local v30           #contentType:Ljava/lang/String;
    .end local v42           #intentData:[B
    .end local v50           #processFurther:Z
    .end local v52           #wapAppId:Ljava/lang/String;
    .end local v53           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_371
    add-int v32, v8, v9

    .line 549
    .local v32, dataIndex:I
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v32

    new-array v0, v4, [B

    move-object/from16 v42, v0

    .line 550
    .restart local v42       #intentData:[B
    const/4 v4, 0x0

    move-object/from16 v0, v42

    array-length v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_31f

    .end local v32           #dataIndex:I
    .restart local v52       #wapAppId:Ljava/lang/String;
    :cond_38a
    move-object/from16 v30, v14

    .line 567
    goto :goto_360

    .line 578
    .restart local v30       #contentType:Ljava/lang/String;
    .restart local v50       #processFurther:Z
    .restart local v53       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_38d
    :try_start_38d
    new-instance v41, Landroid/content/Intent;

    invoke-direct/range {v41 .. v41}, Landroid/content/Intent;-><init>()V

    .line 579
    .local v41, intent:Landroid/content/Intent;
    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v4, "header"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 582
    const-string v4, "data"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 583
    const-string v4, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 586
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    move-object/from16 v2, v30

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_3ce
    .catch Landroid/os/RemoteException; {:try_start_38d .. :try_end_3ce} :catch_3dd

    move-result v49

    .line 588
    .local v49, procRet:I
    and-int/lit8 v4, v49, 0x1

    if-lez v4, :cond_36c

    const v4, 0x8000

    and-int v4, v4, v49

    if-nez v4, :cond_36c

    .line 590
    const/16 v50, 0x0

    goto :goto_36c

    .line 596
    .end local v41           #intent:Landroid/content/Intent;
    .end local v49           #procRet:I
    .end local v53           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_3dd
    move-exception v4

    .line 602
    .end local v30           #contentType:Ljava/lang/String;
    .end local v50           #processFurther:Z
    .end local v52           #wapAppId:Ljava/lang/String;
    :cond_3de
    if-nez v14, :cond_3e3

    .line 604
    const/4 v4, 0x2

    goto/16 :goto_16

    .line 609
    :cond_3e3
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_456

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 613
    .local v34, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v34, :cond_407

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v4

    if-eqz v4, :cond_407

    .line 614
    const/4 v4, -0x1

    goto/16 :goto_16

    .line 617
    :cond_407
    const-string v48, "android.permission.RECEIVE_MMS"

    .line 622
    .end local v34           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .local v48, permission:Ljava/lang/String;
    :goto_409
    new-instance v41, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .restart local v41       #intent:Landroid/content/Intent;
    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v4, "header"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 627
    const-string v4, "data"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 628
    const-string v4, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 636
    const/4 v4, -0x1

    goto/16 :goto_16

    .line 619
    .end local v41           #intent:Landroid/content/Intent;
    .end local v48           #permission:Ljava/lang/String;
    :cond_456
    const-string v48, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v48       #permission:Ljava/lang/String;
    goto :goto_409

    .line 224
    nop

    :sswitch_data_45a
    .sparse-switch
        0x2e -> :sswitch_11d
        0x30 -> :sswitch_121
        0x32 -> :sswitch_125
        0x36 -> :sswitch_13d
        0x3e -> :sswitch_129
        0x42 -> :sswitch_141
        0x43 -> :sswitch_145
        0x44 -> :sswitch_135
        0x4a -> :sswitch_8f
        0x4b -> :sswitch_119
        0x4e -> :sswitch_139
        0xb0 -> :sswitch_14d
        0xce -> :sswitch_139
        0x30a -> :sswitch_149
        0x310 -> :sswitch_131
        0x312 -> :sswitch_12d
    .end sparse-switch

    .line 421
    :sswitch_data_49c
    .sparse-switch
        0x2e -> :sswitch_295
        0x32 -> :sswitch_274
        0x36 -> :sswitch_295
        0x3e -> :sswitch_27f
        0x42 -> :sswitch_299
        0x43 -> :sswitch_299
        0x44 -> :sswitch_28a
        0x4e -> :sswitch_2a9
        0xce -> :sswitch_2a9
        0x30a -> :sswitch_2ad
        0x310 -> :sswitch_2ad
    .end sparse-switch
.end method

.method public dispatchWapPushAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "OriginalAddress"

    .prologue
    .line 143
    if-eqz p1, :cond_5

    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    .line 150
    :goto_4
    return-void

    .line 148
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->PushOriginalAddress:Ljava/lang/String;

    goto :goto_4
.end method
