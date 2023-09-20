.class public final Ls/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0xff

.field public static final b:I = 0xff

.field public static final c:I = 0xfe

.field public static final d:I = 0xfd

.field public static final e:I = 0xfc

.field public static final f:I = 0xfb

.field public static final g:I = 0xfa

.field public static final h:I = 0xf9

.field public static final i:I = 0xf8

.field public static final j:I = 0xf7

.field public static final k:I = 0xf6

.field public static final l:I = 0xf5

.field public static final m:I = 0xf4

.field public static final n:I = 0xf3

.field public static final o:I = 0xf2

.field public static final p:I = 0xf1

.field public static final q:I = 0xf0

.field public static final r:I = 0xef

.field public static final s:I = 0xee

.field public static final t:I = 0xed

.field public static final u:I = 0xec

.field public static final v:I = 0xf2

.field public static final w:[Ljava/lang/String;

.field public static final x:I = 0xff

.field public static final y:I = 0xec


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    const-string v0, "IAC"

    const-string v1, "DONT"

    const-string v2, "DO"

    const-string v3, "WONT"

    const-string v4, "WILL"

    const-string v5, "SB"

    const-string v6, "GA"

    const-string v7, "EL"

    const-string v8, "EC"

    const-string v9, "AYT"

    const-string v10, "AO"

    const-string v11, "IP"

    const-string v12, "BRK"

    const-string v13, "DMARK"

    const-string v14, "NOP"

    const-string v15, "SE"

    const-string v16, "EOR"

    const-string v17, "ABORT"

    const-string v18, "SUSP"

    const-string v19, "EOF"

    .line 1
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls/g;->w:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ls/g;->w:[Ljava/lang/String;

    rsub-int p0, p0, 0xff

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static final b(I)Z
    .locals 1

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/16 v0, 0xec

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
