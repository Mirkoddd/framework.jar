.class public final Landroid/util/secutil/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/secutil/Log$TerribleFailureHandler;,
        Landroid/util/secutil/Log$TerribleFailure;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_RADIO:I = 0x1

.field public static final LOG_ID_SYSTEM:I = 0x3

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    new-instance v0, Landroid/util/secutil/Log$1;

    invoke-direct {v0}, Landroid/util/secutil/Log$1;-><init>()V

    sput-object v0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 160
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_a

    .line 161
    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 163
    :cond_a
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 181
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_25

    .line 182
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 184
    :cond_25
    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 323
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_a

    .line 324
    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 326
    :cond_a
    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 344
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_25

    .line 345
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 347
    :cond_25
    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .parameter "tr"

    .prologue
    .line 416
    if-nez p0, :cond_5

    .line 417
    const-string v3, ""

    .line 433
    :goto_4
    return-object v3

    .line 422
    :cond_5
    move-object v2, p0

    .line 423
    .local v2, t:Ljava/lang/Throwable;
    :goto_6
    if-eqz v2, :cond_14

    .line 424
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_f

    .line 425
    const-string v3, ""

    goto :goto_4

    .line 427
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_6

    .line 430
    :cond_14
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 431
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 432
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 433
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 201
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_a

    .line 202
    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 204
    :cond_a
    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 222
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_25

    .line 223
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
    :cond_25
    return v0
.end method

.method public static native isLoggable(Ljava/lang/String;I)Z
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 445
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_9

    .line 446
    invoke-static {v0, p0, p1, p2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 448
    :cond_9
    return v0
.end method

.method public static native println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 167
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_9

    .line 168
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 170
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 188
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_9

    .line 189
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 191
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 330
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_9

    .line 331
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 333
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 351
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_9

    .line 352
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 354
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 208
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_9

    .line 209
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 229
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_9

    .line 230
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 232
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 125
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_9

    .line 126
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 129
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 147
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_9

    .line 148
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 150
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 249
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_9

    .line 250
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 252
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 270
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_9

    .line 271
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 273
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 310
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_9

    .line 311
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 313
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static setWtfHandler(Landroid/util/secutil/Log$TerribleFailureHandler;)Landroid/util/secutil/Log$TerribleFailureHandler;
    .registers 4
    .parameter "handler"

    .prologue
    .line 403
    if-nez p0, :cond_a

    .line 404
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "handler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_a
    sget-object v0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    .line 407
    .local v0, oldHandler:Landroid/util/secutil/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    .line 408
    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 118
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_a

    .line 119
    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    :cond_a
    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 140
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_25

    .line 141
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 143
    :cond_25
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 242
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_a

    .line 243
    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 245
    :cond_a
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 263
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_25

    .line 264
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 266
    :cond_25
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .parameter "tag"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 303
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_e

    .line 304
    const/4 v1, 0x5

    invoke-static {p1}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 306
    :cond_e
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 9
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 389
    new-instance v1, Landroid/util/secutil/Log$TerribleFailure;

    invoke-direct {v1, p1, p2}, Landroid/util/secutil/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    .local v1, what:Landroid/util/secutil/Log$TerribleFailure;
    const/4 v2, 0x0

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 391
    .local v0, bytes:I
    sget-object v2, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    invoke-interface {v2, p0, v1}, Landroid/util/secutil/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/secutil/Log$TerribleFailure;)V

    .line 392
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
