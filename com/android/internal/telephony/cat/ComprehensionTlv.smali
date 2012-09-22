.class Lcom/android/internal/telephony/cat/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComprehensionTlv"


# instance fields
.field private mCr:Z

.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(IZI[BI)V
    .registers 6
    .parameter "tag"
    .parameter "cr"
    .parameter "length"
    .parameter "data"
    .parameter "valueIndex"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    .line 52
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    .line 53
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    .line 54
    iput p5, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    .line 55
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    .line 56
    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 14
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 122
    move v5, p1

    .line 123
    .local v5, curIndex:I
    :try_start_5
    array-length v8, p0
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_6} :catch_87

    .line 128
    .local v8, endIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #curIndex:I
    .local v6, curIndex:I
    :try_start_8
    aget-byte v4, p0, v5
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_a} :catch_5d

    and-int/lit16 v9, v4, 0xff

    .line 129
    .local v9, temp:I
    sparse-switch v9, :sswitch_data_be

    .line 147
    move v1, v9

    .line 148
    .local v1, tag:I
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_47

    .line 149
    .local v2, cr:Z
    :goto_14
    and-int/lit16 v1, v1, -0x81

    .line 155
    :goto_16
    add-int/lit8 v5, v6, 0x1

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    :try_start_18
    aget-byte v0, p0, v6

    and-int/lit16 v9, v0, 0xff

    .line 156
    if-ge v9, v11, :cond_49

    .line 157
    move v3, v9

    .line 185
    .local v3, length:I
    :cond_1f
    :goto_1f
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/ComprehensionTlv;-><init>(IZI[BI)V
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_25} :catch_87

    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    :goto_25
    return-object v0

    .line 136
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    :sswitch_26
    const/4 v0, 0x0

    move v5, v6

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    goto :goto_25

    .line 139
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    :sswitch_29
    :try_start_29
    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int v1, v4, v10

    .line 141
    .restart local v1       #tag:I
    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_45

    .line 142
    .restart local v2       #cr:Z
    :goto_3d
    const v0, -0x8001

    and-int/2addr v1, v0

    .line 143
    add-int/lit8 v5, v6, 0x2

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    move v6, v5

    .line 144
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    goto :goto_16

    .end local v2           #cr:Z
    :cond_45
    move v2, v0

    .line 141
    goto :goto_3d

    :cond_47
    move v2, v0

    .line 148
    goto :goto_14

    .line 158
    .end local v6           #curIndex:I
    .restart local v2       #cr:Z
    .restart local v5       #curIndex:I
    :cond_49
    const/16 v0, 0x81

    if-ne v9, v0, :cond_67

    .line 159
    add-int/lit8 v6, v5, 0x1

    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    aget-byte v0, p0, v5

    and-int/lit16 v3, v0, 0xff

    .line 160
    .restart local v3       #length:I
    if-ge v3, v11, :cond_ba

    .line 161
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
    :try_end_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_5d} :catch_5d

    .line 187
    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    .end local v9           #temp:I
    :catch_5d
    move-exception v7

    move v5, v6

    .line 188
    .end local v6           #curIndex:I
    .end local v8           #endIndex:I
    .restart local v5       #curIndex:I
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_5f
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 164
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #tag:I
    .restart local v2       #cr:Z
    .restart local v8       #endIndex:I
    .restart local v9       #temp:I
    :cond_67
    const/16 v0, 0x82

    if-ne v9, v0, :cond_89

    .line 165
    :try_start_6b
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 167
    .restart local v3       #length:I
    add-int/lit8 v5, v5, 0x2

    .line 168
    const/16 v0, 0x100

    if-ge v3, v0, :cond_1f

    .line 169
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 187
    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    .end local v8           #endIndex:I
    .end local v9           #temp:I
    :catch_87
    move-exception v7

    goto :goto_5f

    .line 172
    .restart local v1       #tag:I
    .restart local v2       #cr:Z
    .restart local v8       #endIndex:I
    .restart local v9       #temp:I
    :cond_89
    const/16 v0, 0x83

    if-ne v9, v0, :cond_b2

    .line 173
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 176
    .restart local v3       #length:I
    add-int/lit8 v5, v5, 0x3

    .line 177
    const/high16 v0, 0x1

    if-ge v3, v0, :cond_1f

    .line 178
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 182
    .end local v3           #length:I
    :cond_b2
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
    :try_end_ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6b .. :try_end_ba} :catch_87

    .end local v5           #curIndex:I
    .restart local v3       #length:I
    .restart local v6       #curIndex:I
    :cond_ba
    move v5, v6

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    goto/16 :goto_1f

    .line 129
    nop

    :sswitch_data_be
    .sparse-switch
        0x0 -> :sswitch_26
        0x7f -> :sswitch_29
        0x80 -> :sswitch_26
        0xff -> :sswitch_26
    .end sparse-switch
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .registers 7
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    array-length v1, p0

    .line 90
    .local v1, endIndex:I
    :goto_6
    if-ge p1, v1, :cond_1f

    .line 91
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 98
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_18

    .line 99
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget v3, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    iget v4, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    add-int p1, v3, v4

    goto :goto_6

    .line 102
    :cond_18
    const-string v3, "ComprehensionTlv"

    const-string v4, "decodeMany: ctlv is null, stop decoding"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v0           #ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1f
    return-object v2
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    return v0
.end method

.method public getRawValue()[B
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    return v0
.end method

.method public getValueIndex()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    return v0
.end method

.method public isComprehensionRequired()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    return v0
.end method
