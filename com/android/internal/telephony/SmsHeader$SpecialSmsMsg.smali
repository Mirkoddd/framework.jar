.class public Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialSmsMsg"
.end annotation


# instance fields
.field public msgCount:I

.field public msgIndType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
