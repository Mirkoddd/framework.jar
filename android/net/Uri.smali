.class public abstract Landroid/net/Uri;
.super Ljava/lang/Object;
.source "Uri.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$PathPart;,
        Landroid/net/Uri$Part;,
        Landroid/net/Uri$AbstractPart;,
        Landroid/net/Uri$Builder;,
        Landroid/net/Uri$HierarchicalUri;,
        Landroid/net/Uri$AbstractHierarchicalUri;,
        Landroid/net/Uri$PathSegmentsBuilder;,
        Landroid/net/Uri$PathSegments;,
        Landroid/net/Uri$OpaqueUri;,
        Landroid/net/Uri$StringUri;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final EMPTY:Landroid/net/Uri; = null

.field private static final HEX_DIGITS:[C = null

.field private static final LOG:Ljava/lang/String; = null

.field private static final NOT_CACHED:Ljava/lang/String; = null

.field private static final NOT_CALCULATED:I = -0x2

.field private static final NOT_FOUND:I = -0x1

.field private static final NOT_HIERARCHICAL:Ljava/lang/String; = "This isn\'t a hierarchical URI."

.field private static final NULL_TYPE_ID:I

.field private static final REPLACEMENT:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 109
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/String;

    const-string v2, "NOT CACHED"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    sget-object v2, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v3, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    sput-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1735
    new-instance v0, Landroid/net/Uri$1;

    invoke-direct {v0}, Landroid/net/Uri$1;-><init>()V

    sput-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1769
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->HEX_DIGITS:[C

    .line 1894
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    sput-object v0, Landroid/net/Uri;->REPLACEMENT:[B

    return-void

    :array_3a
    .array-data 0x1
        0xfft
        0xfdt
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/net/Uri;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "s"

    .prologue
    const/16 v11, 0x25

    const/4 v10, -0x1

    .line 1913
    if-nez p0, :cond_7

    .line 1914
    const/4 p0, 0x0

    .line 2003
    .end local p0
    .local v2, current:I
    .local v3, decoded:Ljava/lang/StringBuilder;
    .local v6, oldLength:I
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_6
    return-object p0

    .line 1918
    .end local v2           #current:I
    .end local v3           #decoded:Ljava/lang/StringBuilder;
    .end local v6           #oldLength:I
    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p0
    :cond_7
    const/4 v3, 0x0

    .line 1919
    .restart local v3       #decoded:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 1921
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1926
    .restart local v6       #oldLength:I
    const/4 v2, 0x0

    .line 1927
    .restart local v2       #current:I
    :goto_e
    if-ge v2, v6, :cond_8b

    .line 1931
    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1933
    .local v5, nextEscape:I
    if-ne v5, v10, :cond_20

    .line 1934
    if-eqz v3, :cond_6

    .line 1939
    invoke-virtual {v3, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1940
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 1945
    :cond_20
    if-nez v3, :cond_57

    .line 1950
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #decoded:Ljava/lang/StringBuilder;
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1951
    .restart local v3       #decoded:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1958
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    :goto_2d
    if-le v5, v2, :cond_33

    .line 1959
    invoke-virtual {v3, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1961
    move v2, v5

    .line 1973
    :cond_33
    add-int/lit8 v8, v2, 0x2

    if-lt v8, v6, :cond_5b

    .line 1975
    :try_start_37
    sget-object v8, Landroid/net/Uri;->REPLACEMENT:[B

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1990
    :goto_3c
    add-int/lit8 v2, v2, 0x3

    .line 1991
    if-ge v2, v6, :cond_46

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_33

    .line 1994
    :cond_46
    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_4f} :catch_50
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4f} :catch_7d

    goto :goto_e

    .line 1995
    :catch_50
    move-exception v4

    .line 1996
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1954
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :cond_57
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2d

    .line 1977
    :cond_5b
    add-int/lit8 v8, v2, 0x1

    :try_start_5d
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1978
    .local v0, a:I
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1980
    .local v1, b:I
    if-eq v0, v10, :cond_77

    if-ne v1, v10, :cond_84

    .line 1982
    :cond_77
    sget-object v8, Landroid/net/Uri;->REPLACEMENT:[B

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5d .. :try_end_7c} :catch_50
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_7c} :catch_7d

    goto :goto_3c

    .line 1997
    .end local v0           #a:I
    .end local v1           #b:I
    :catch_7d
    move-exception v4

    .line 1998
    .local v4, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1985
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #a:I
    .restart local v1       #b:I
    :cond_84
    shl-int/lit8 v8, v0, 0x4

    add-int/2addr v8, v1

    :try_start_87
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_87 .. :try_end_8a} :catch_50
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_7d

    goto :goto_3c

    .line 2003
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v5           #nextEscape:I
    :cond_8b
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 1782
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "s"
    .parameter "allow"

    .prologue
    .line 1799
    if-nez p0, :cond_4

    .line 1800
    const/4 p0, 0x0

    .line 1874
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 1804
    .restart local p0
    :cond_4
    const/4 v4, 0x0

    .line 1806
    .local v4, encoded:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 1811
    .local v8, oldLength:I
    const/4 v2, 0x0

    .line 1812
    .local v2, current:I
    :goto_a
    if-ge v2, v8, :cond_7d

    .line 1816
    move v7, v2

    .line 1818
    .local v7, nextToEncode:I
    :goto_d
    if-ge v7, v8, :cond_1c

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1819
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 1823
    :cond_1c
    if-ne v7, v8, :cond_28

    .line 1824
    if-eqz v2, :cond_3

    .line 1829
    invoke-virtual {v4, p0, v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 1834
    :cond_28
    if-nez v4, :cond_2f

    .line 1835
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #encoded:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    .restart local v4       #encoded:Ljava/lang/StringBuilder;
    :cond_2f
    if-le v7, v2, :cond_34

    .line 1840
    invoke-virtual {v4, p0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1848
    :cond_34
    move v2, v7

    .line 1849
    add-int/lit8 v6, v2, 0x1

    .line 1851
    .local v6, nextAllowed:I
    :goto_37
    if-ge v6, v8, :cond_46

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_46

    .line 1852
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 1857
    :cond_46
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1859
    .local v9, toEncode:Ljava/lang/String;
    :try_start_4a
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1860
    .local v0, bytes:[B
    array-length v1, v0

    .line 1861
    .local v1, bytesLength:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_52
    if-ge v5, v1, :cond_7b

    .line 1862
    const/16 v10, 0x25

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1863
    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v11, v0, v5

    and-int/lit16 v11, v11, 0xf0

    shr-int/lit8 v11, v11, 0x4

    aget-char v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1864
    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v11, v0, v5

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_71
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_71} :catch_74

    .line 1861
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 1866
    .end local v0           #bytes:[B
    .end local v1           #bytesLength:I
    .end local v5           #i:I
    :catch_74
    move-exception v3

    .line 1867
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 1870
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #bytes:[B
    .restart local v1       #bytesLength:I
    .restart local v5       #i:I
    :cond_7b
    move v2, v6

    .line 1871
    goto :goto_a

    .line 1874
    .end local v0           #bytes:[B
    .end local v1           #bytesLength:I
    .end local v5           #i:I
    .end local v6           #nextAllowed:I
    .end local v7           #nextToEncode:I
    .end local v9           #toEncode:Ljava/lang/String;
    :cond_7d
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static fromFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 8
    .parameter "file"

    .prologue
    .line 453
    if-nez p0, :cond_a

    .line 454
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    .line 458
    .local v3, path:Landroid/net/Uri$PathPart;
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    const-string v1, "file"

    sget-object v2, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public static fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "scheme"
    .parameter "ssp"
    .parameter "fragment"

    .prologue
    .line 820
    if-nez p0, :cond_b

    .line 821
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "scheme"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_b
    if-nez p1, :cond_16

    .line 824
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ssp"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_16
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method private static isAllowed(CLjava/lang/String;)Z
    .registers 4
    .parameter "c"
    .parameter "allow"

    .prologue
    const/4 v1, -0x1

    .line 1886
    const/16 v0, 0x41

    if-lt p0, v0, :cond_9

    const/16 v0, 0x5a

    if-le p0, v0, :cond_29

    :cond_9
    const/16 v0, 0x61

    if-lt p0, v0, :cond_11

    const/16 v0, 0x7a

    if-le p0, v0, :cond_29

    :cond_11
    const/16 v0, 0x30

    if-lt p0, v0, :cond_19

    const/16 v0, 0x39

    if-le p0, v0, :cond_29

    :cond_19
    const-string v0, "_-!.~\'()*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_29

    if-eqz p1, :cond_2b

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_2b

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static parse(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "uriString"

    .prologue
    .line 439
    new-instance v0, Landroid/net/Uri$StringUri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public static withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "baseUri"
    .parameter "pathSegment"

    .prologue
    .line 2363
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2364
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2365
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    .registers 3
    .parameter "out"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 1762
    if-nez p1, :cond_7

    .line 1763
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    :goto_6
    return-void

    .line 1765
    :cond_7
    invoke-virtual {p1, p0, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method


# virtual methods
.method public abstract buildUpon()Landroid/net/Uri$Builder;
.end method

.method public compareTo(Landroid/net/Uri;)I
    .registers 4
    .parameter "other"

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 326
    instance-of v1, p1, Landroid/net/Uri;

    if-nez v1, :cond_6

    .line 327
    const/4 v1, 0x0

    .line 332
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 330
    check-cast v0, Landroid/net/Uri;

    .line 332
    .local v0, other:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getBooleanQueryParameter(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1721
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1722
    .local v0, flag:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1726
    .end local p2
    :goto_6
    return p2

    .line 1725
    .restart local p2
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1726
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    :goto_1c
    move p2, v1

    goto :goto_6

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public abstract getEncodedAuthority()Ljava/lang/String;
.end method

.method public abstract getEncodedFragment()Ljava/lang/String;
.end method

.method public abstract getEncodedPath()Ljava/lang/String;
.end method

.method public abstract getEncodedQuery()Ljava/lang/String;
.end method

.method public abstract getEncodedSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getEncodedUserInfo()Ljava/lang/String;
.end method

.method public abstract getFragment()Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLastPathSegment()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 1668
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1669
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "This isn\'t a hierarchical URI."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1671
    :cond_10
    if-nez p1, :cond_1b

    .line 1672
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "key"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1675
    :cond_1b
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 1676
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_22

    .line 1708
    :cond_21
    :goto_21
    return-object v7

    .line 1680
    :cond_22
    invoke-static {p1, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, encodedKey:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1682
    .local v2, length:I
    const/4 v6, 0x0

    .line 1684
    .local v6, start:I
    :goto_2b
    const/16 v8, 0x26

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1685
    .local v3, nextAmpersand:I
    if-eq v3, v10, :cond_57

    move v1, v3

    .line 1687
    .local v1, end:I
    :goto_34
    const/16 v8, 0x3d

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1688
    .local v5, separator:I
    if-gt v5, v1, :cond_3e

    if-ne v5, v10, :cond_3f

    .line 1689
    :cond_3e
    move v5, v1

    .line 1692
    :cond_3f
    sub-int v8, v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_64

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v6, v0, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 1694
    if-ne v5, v1, :cond_59

    .line 1695
    const-string v7, ""

    goto :goto_21

    .end local v1           #end:I
    .end local v5           #separator:I
    :cond_57
    move v1, v2

    .line 1685
    goto :goto_34

    .line 1697
    .restart local v1       #end:I
    .restart local v5       #separator:I
    :cond_59
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_21

    .line 1702
    :cond_64
    if-eq v3, v10, :cond_21

    .line 1703
    add-int/lit8 v6, v3, 0x1

    .line 1707
    goto :goto_2b
.end method

.method public getQueryParameterNames()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 1568
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1569
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "This isn\'t a hierarchical URI."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1572
    :cond_f
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 1573
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 1574
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 1595
    :goto_19
    return-object v7

    .line 1577
    :cond_1a
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1578
    .local v2, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1580
    .local v6, start:I
    :cond_20
    const/16 v7, 0x26

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1581
    .local v3, next:I
    if-ne v3, v8, :cond_4f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 1583
    .local v0, end:I
    :goto_2c
    const/16 v7, 0x3d

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1584
    .local v5, separator:I
    if-gt v5, v0, :cond_36

    if-ne v5, v8, :cond_37

    .line 1585
    :cond_36
    move v5, v0

    .line 1588
    :cond_37
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1589
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1592
    add-int/lit8 v6, v0, 0x1

    .line 1593
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_20

    .line 1595
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    goto :goto_19

    .end local v0           #end:I
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #separator:I
    :cond_4f
    move v0, v3

    .line 1581
    goto :goto_2c
.end method

.method public getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 1608
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1609
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "This isn\'t a hierarchical URI."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1611
    :cond_f
    if-nez p1, :cond_1a

    .line 1612
    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "key"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1615
    :cond_1a
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 1616
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_25

    .line 1617
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 1656
    :goto_24
    return-object v8

    .line 1622
    :cond_25
    :try_start_25
    const-string v8, "UTF-8"

    invoke-static {p1, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_2a} :catch_64

    move-result-object v1

    .line 1627
    .local v1, encodedKey:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v7, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1631
    .local v6, start:I
    :goto_31
    const/16 v8, 0x26

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1632
    .local v3, nextAmpersand:I
    if-eq v3, v10, :cond_6b

    move v2, v3

    .line 1634
    .local v2, end:I
    :goto_3a
    const/16 v8, 0x3d

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1635
    .local v5, separator:I
    if-gt v5, v2, :cond_44

    if-ne v5, v10, :cond_45

    .line 1636
    :cond_44
    move v5, v2

    .line 1639
    :cond_45
    sub-int v8, v5, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_5f

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v6, v1, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 1641
    if-ne v5, v2, :cond_70

    .line 1642
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    :cond_5f
    :goto_5f
    if-eq v3, v10, :cond_7e

    .line 1650
    add-int/lit8 v6, v3, 0x1

    .line 1654
    goto :goto_31

    .line 1623
    .end local v1           #encodedKey:Ljava/lang/String;
    .end local v2           #end:I
    .end local v3           #nextAmpersand:I
    .end local v5           #separator:I
    .end local v6           #start:I
    .end local v7           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_64
    move-exception v0

    .line 1624
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1632
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #encodedKey:Ljava/lang/String;
    .restart local v3       #nextAmpersand:I
    .restart local v6       #start:I
    .restart local v7       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_3a

    .line 1644
    .restart local v2       #end:I
    .restart local v5       #separator:I
    :cond_70
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 1656
    :cond_7e
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_24
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getUserInfo()Ljava/lang/String;
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isHierarchical()Z
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isRelative()Z
.end method

.method public toSafeString()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x40

    .line 363
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, ssp:Ljava/lang/String;
    if-eqz v3, :cond_ce

    .line 366
    const-string/jumbo v5, "tel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string/jumbo v5, "sip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string/jumbo v5, "sms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string/jumbo v5, "smsto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string/jumbo v5, "mailto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "https"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "ftp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string/jumbo v5, "news"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string/jumbo v5, "telnet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "gopher"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 372
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    if-eqz v4, :cond_9b

    .line 376
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_9b

    .line 377
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 378
    .local v1, c:C
    const/16 v5, 0x2d

    if-eq v1, v5, :cond_8f

    if-eq v1, v6, :cond_8f

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_95

    .line 379
    :cond_8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    :goto_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 381
    :cond_95
    const/16 v5, 0x78

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_92

    .line 385
    .end local v1           #c:C
    .end local v2           #i:I
    :cond_9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    :goto_9f
    return-object v5

    .line 387
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 388
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 389
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    :goto_b2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9f

    .line 391
    :cond_b7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":xxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    .line 399
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 400
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_db

    .line 401
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_db
    if-eqz v4, :cond_e0

    .line 405
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9f
.end method

.method public abstract toString()Ljava/lang/String;
.end method
