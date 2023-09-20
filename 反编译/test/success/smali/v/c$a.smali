.class public Lv/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[Ljava/security/cert/X509Certificate;

.field public final b:Ljava/security/PrivateKey;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lv/c$a;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p3

    check-cast p3, Ljava/security/PrivateKey;

    iput-object p3, p0, Lv/c$a;->b:Ljava/security/PrivateKey;

    .line 4
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    .line 5
    array-length p2, p1

    new-array p2, p2, [Ljava/security/cert/X509Certificate;

    const/4 p3, 0x0

    .line 6
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    .line 7
    aget-object v0, p1, p3

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-object p2, p0, Lv/c$a;->a:[Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c$a;->a:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public final c()Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c$a;->b:Ljava/security/PrivateKey;

    return-object v0
.end method
