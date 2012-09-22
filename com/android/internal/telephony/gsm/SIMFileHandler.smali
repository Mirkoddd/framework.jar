.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 46
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 50
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .registers 6
    .parameter "efid"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 64
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 66
    sparse-switch p1, :sswitch_data_50

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_1b

    .line 103
    if-eqz v0, :cond_25

    .line 104
    const-string v1, "3F007F105F3A"

    .line 152
    .end local v1           #path:Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-object v1

    .line 83
    :sswitch_1c
    const-string v1, "7FFF"

    goto :goto_1b

    .line 92
    :sswitch_1f
    const-string v1, "3F007F20"

    goto :goto_1b

    .line 96
    :sswitch_22
    const-string v1, "3F007F105F3A"

    goto :goto_1b

    .line 106
    .restart local v1       #path:Ljava/lang/String;
    :cond_25
    const-string v2, "GSM"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 112
    .end local v1           #path:Ljava/lang/String;
    :cond_2d
    sparse-switch p1, :sswitch_data_b2

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1       #path:Ljava/lang/String;
    if-nez v1, :cond_1b

    .line 150
    const-string v2, "GSM"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 114
    .end local v1           #path:Ljava/lang/String;
    :sswitch_3e
    const-string v1, "3F007F10"

    goto :goto_1b

    .line 126
    :sswitch_41
    const-string v1, "3F007F20"

    goto :goto_1b

    .line 130
    :sswitch_44
    const-string v1, "3F007FFF5F3D"

    goto :goto_1b

    .line 140
    :sswitch_47
    const-string v1, "3F007F20"

    goto :goto_1b

    .line 144
    :sswitch_4a
    const-string v1, "3F007F105F3A"

    goto :goto_1b

    .line 146
    :sswitch_4d
    const-string v1, "3F007F43"

    goto :goto_1b

    .line 66
    :sswitch_data_50
    .sparse-switch
        0x4f30 -> :sswitch_22
        0x6f11 -> :sswitch_1f
        0x6f13 -> :sswitch_1f
        0x6f14 -> :sswitch_1f
        0x6f15 -> :sswitch_1f
        0x6f16 -> :sswitch_1f
        0x6f17 -> :sswitch_1f
        0x6f18 -> :sswitch_1f
        0x6f38 -> :sswitch_1c
        0x6f3b -> :sswitch_1c
        0x6f3c -> :sswitch_1c
        0x6f40 -> :sswitch_1c
        0x6f46 -> :sswitch_1c
        0x6f49 -> :sswitch_1c
        0x6f4b -> :sswitch_1c
        0x6f4c -> :sswitch_1c
        0x6fad -> :sswitch_1c
        0x6fc5 -> :sswitch_1c
        0x6fc7 -> :sswitch_1c
        0x6fc8 -> :sswitch_1c
        0x6fc9 -> :sswitch_1c
        0x6fca -> :sswitch_1c
        0x6fcb -> :sswitch_1c
        0x6fcd -> :sswitch_1c
    .end sparse-switch

    .line 112
    :sswitch_data_b2
    .sparse-switch
        0x4f22 -> :sswitch_44
        0x4f30 -> :sswitch_4a
        0x4f55 -> :sswitch_44
        0x6f02 -> :sswitch_4d
        0x6f11 -> :sswitch_47
        0x6f13 -> :sswitch_47
        0x6f14 -> :sswitch_47
        0x6f15 -> :sswitch_47
        0x6f16 -> :sswitch_47
        0x6f17 -> :sswitch_47
        0x6f18 -> :sswitch_47
        0x6f38 -> :sswitch_41
        0x6f3c -> :sswitch_3e
        0x6f46 -> :sswitch_41
        0x6fad -> :sswitch_41
        0x6fc5 -> :sswitch_41
        0x6fc7 -> :sswitch_41
        0x6fc8 -> :sswitch_41
        0x6fc9 -> :sswitch_41
        0x6fca -> :sswitch_41
        0x6fcb -> :sswitch_41
        0x6fcd -> :sswitch_41
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 58
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 157
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 161
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method
