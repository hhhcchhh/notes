.class public final Lr/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x8

.field public static final B:I = 0x9

.field public static final C:I = 0xd

.field public static final D:[Ljava/lang/String;

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field public static final m:I = 0xc

.field public static final n:I = 0xd

.field public static final o:I = 0xe

.field public static final p:I = 0xf

.field public static final q:I = 0x10

.field public static final r:I = 0x0

.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:I = 0x3

.field public static final w:I = 0x4

.field public static final x:I = 0x5

.field public static final y:I = 0x6

.field public static final z:I = 0x7


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const-string v0, "HELO"

    const-string v1, "MAIL FROM:"

    const-string v2, "RCPT TO:"

    const-string v3, "DATA"

    const-string v4, "SEND FROM:"

    const-string v5, "SOML FROM:"

    const-string v6, "SAML FROM:"

    const-string v7, "RSET"

    const-string v8, "VRFY"

    const-string v9, "EXPN"

    const-string v10, "HELP"

    const-string v11, "NOOP"

    const-string v12, "TURN"

    const-string v13, "QUIT"

    const-string v14, "AUTH"

    const-string v15, "EHLO"

    .line 1
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr/e;->D:[Ljava/lang/String;

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
    sget-object v0, Lr/e;->D:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
