.class public Lv/c$b;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lv/c$a;


# direct methods
.method public constructor <init>(Lv/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 2
    iput-object p1, p0, Lv/c$b;->a:Lv/c$a;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lv/c$b;->a:Lv/c$a;

    invoke-virtual {p1}, Lv/c$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1
    iget-object p1, p0, Lv/c$b;->a:Lv/c$a;

    invoke-virtual {p1}, Lv/c$a;->b()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 1
    iget-object p2, p0, Lv/c$b;->a:Lv/c$a;

    invoke-virtual {p2}, Lv/c$a;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0

    .line 1
    iget-object p1, p0, Lv/c$b;->a:Lv/c$a;

    invoke-virtual {p1}, Lv/c$a;->c()Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
