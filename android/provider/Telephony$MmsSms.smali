.class public final Landroid/provider/Telephony$MmsSms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$MmsSms$WordsTable;,
        Landroid/provider/Telephony$MmsSms$PendingMessages;
    }
.end annotation


# static fields
.field public static final ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_IN_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_OUT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_PUSH_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_SENT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_CONVERSATIONS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_DRAFT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_LOCKED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_UNDELIVERED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ERR_TYPE_GENERIC:I = 0x1

.field public static final ERR_TYPE_GENERIC_PERMANENT:I = 0xa

.field public static final ERR_TYPE_MMS_PROTO_PERMANENT:I = 0xc

.field public static final ERR_TYPE_MMS_PROTO_TRANSIENT:I = 0x3

.field public static final ERR_TYPE_SMS_PROTO_PERMANENT:I = 0xb

.field public static final ERR_TYPE_SMS_PROTO_TRANSIENT:I = 0x2

.field public static final ERR_TYPE_TRANSPORT_FAILURE:I = 0x4

.field public static final MMS_PROTO:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final SEARCH_URI:Landroid/net/Uri; = null

.field public static final SMS_PROTO:I = 0x0

.field public static final SPAM_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TYPE_DISCRIMINATOR_COLUMN:Ljava/lang/String; = "transport_type"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2168
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    .line 2169
    const-string v0, "content://spam-mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->SPAM_CONTENT_URI:Landroid/net/Uri;

    .line 2171
    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    .line 2174
    const-string v0, "content://mms-sms/messages/byphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

    .line 2177
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    .line 2180
    const-string v0, "content://mms-sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    .line 2183
    const-string v0, "content://mms-sms/locked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 2191
    const-string v0, "content://mms-sms/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    .line 2197
    const-string v0, "content://mms-sms/allinmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 2200
    const-string v0, "content://mms-sms/alloutmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 2203
    const-string v0, "content://mms-sms/allsentmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 2206
    const-string v0, "content://mms-sms/alldraft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 2209
    const-string v0, "content://mms-sms/allwappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2272
    return-void
.end method
