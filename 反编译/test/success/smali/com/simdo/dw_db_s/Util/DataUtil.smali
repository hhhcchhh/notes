.class public Lcom/simdo/dw_db_s/Util/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Asc2String([B)Ljava/lang/String;
    .locals 4

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    int-to-char v3, v3

    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static String2Asc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 267
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    .line 269
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 270
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 271
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 273
    :cond_0
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static StringToInt(Ljava/lang/String;I)I
    .locals 0

    .line 285
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static byteArrayToInt([B)C
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 131
    aget-byte v3, p0, v2

    invoke-static {v3}, Lcom/simdo/dw_db_s/Util/DataUtil;->bytetoint(B)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/DataUtil;->storeUnsignedShort([I)C

    move-result p0

    return p0
.end method

.method public static byteArrayToLong([B)J
    .locals 3

    .line 116
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 118
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 119
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/simdo/dw_db_s/Util/DataUtil;->bytetoint(B)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/DataUtil;->storeUnsignedIntOrLong([I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static byteToHex([B)Ljava/lang/String;
    .locals 6

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 305
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static byteToShort([B)S
    .locals 2

    const/4 v0, 0x1

    .line 243
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static bytesToInt([BI)I
    .locals 2

    .line 200
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static bytesToInt2([B)I
    .locals 2

    const/4 v0, 0x0

    .line 212
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static bytesToInt2([BI)I
    .locals 2

    .line 224
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static bytesToInt3([B)I
    .locals 2

    const/4 v0, 0x1

    .line 235
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static bytetoint(B)I
    .locals 0

    if-gez p0, :cond_0

    and-int/lit16 p0, p0, 0xff

    :cond_0
    return p0
.end method

.method public static charToBytes(C)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intToBytes(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intToBytes2(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intToBytes3(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]+"

    .line 319
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static long2Bytes(J)[B
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v4, v3, 0x8

    rsub-int/lit8 v4, v4, 0x40

    shr-long v4, p0, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 142
    aput-byte v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static shortToBytes(S)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static shortToBytes2(S)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static storeUnsignedByte([B)S
    .locals 1

    const/4 v0, 0x0

    .line 11
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static storeUnsignedIntOrLong([I)J
    .locals 22

    move-object/from16 v0, p0

    .line 30
    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-ne v1, v9, :cond_0

    .line 35
    aget v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    .line 36
    aget v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    .line 37
    aget v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    .line 38
    aget v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v1, v3

    shl-int/lit8 v2, v6, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    :goto_0
    and-long/2addr v0, v2

    goto/16 :goto_1

    .line 40
    :cond_0
    array-length v1, v0

    const/16 v10, 0x20

    const/4 v11, 0x5

    if-ne v1, v11, :cond_1

    .line 46
    aget v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    int-to-long v11, v1

    .line 47
    aget v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    .line 48
    aget v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    int-to-long v13, v1

    .line 49
    aget v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    .line 50
    aget v0, v0, v9

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long v9, v11, v10

    shl-long/2addr v6, v3

    or-long/2addr v6, v9

    shl-long v2, v13, v2

    or-long/2addr v2, v6

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffffL

    goto :goto_0

    .line 53
    :cond_1
    array-length v1, v0

    if-ne v1, v8, :cond_2

    .line 62
    aget v1, v0, v7

    int-to-long v12, v1

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    .line 63
    aget v1, v0, v6

    int-to-long v6, v1

    and-long/2addr v6, v14

    .line 64
    aget v1, v0, v5

    int-to-long v2, v1

    and-long/2addr v2, v14

    .line 65
    aget v1, v0, v4

    move-wide/from16 v16, v6

    int-to-long v5, v1

    and-long/2addr v5, v14

    .line 66
    aget v1, v0, v9

    int-to-long v8, v1

    and-long/2addr v8, v14

    .line 67
    aget v1, v0, v11

    move-wide/from16 v18, v8

    int-to-long v7, v1

    and-long/2addr v7, v14

    const/4 v1, 0x6

    .line 68
    aget v1, v0, v1

    move-wide/from16 v20, v5

    int-to-long v4, v1

    and-long/2addr v4, v14

    const/4 v1, 0x7

    .line 69
    aget v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v14

    const/16 v6, 0x38

    shl-long/2addr v12, v6

    const/16 v6, 0x30

    shl-long v14, v16, v6

    or-long/2addr v12, v14

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v2, v12

    shl-long v12, v20, v10

    or-long/2addr v2, v12

    const/16 v6, 0x18

    shl-long v9, v18, v6

    or-long/2addr v2, v9

    const/16 v6, 0x10

    shl-long v6, v7, v6

    or-long/2addr v2, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public static storeUnsignedShort([I)C
    .locals 2

    const/4 v0, 0x0

    .line 21
    aget v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 22
    aget p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static tagparser([B)[B
    .locals 6

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "tagparser"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 87
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v1, 0xb

    .line 88
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 90
    new-array v1, v0, [B

    .line 92
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "taglenth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "target[0]dezhi"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v2, 0x9

    .line 94
    invoke-static {p0, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    .line 96
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",/////1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v4, v0, :cond_1

    .line 99
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",/////"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method
