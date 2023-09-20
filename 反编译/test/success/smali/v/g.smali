.class public final Lv/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/g$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/security/cert/X509Certificate;

.field public static final b:Ljavax/net/ssl/X509TrustManager;

.field public static final c:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    .line 1
    sput-object v1, Lv/g;->a:[Ljava/security/cert/X509Certificate;

    .line 42
    new-instance v1, Lv/g$a;

    invoke-direct {v1, v0}, Lv/g$a;-><init>(Z)V

    sput-object v1, Lv/g;->b:Ljavax/net/ssl/X509TrustManager;

    .line 44
    new-instance v0, Lv/g$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv/g$a;-><init>(Z)V

    sput-object v0, Lv/g;->c:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 5
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method

.method public static synthetic a()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    sget-object v0, Lv/g;->a:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public static b()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 1
    sget-object v0, Lv/g;->b:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static c()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 1
    sget-object v0, Lv/g;->c:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method
