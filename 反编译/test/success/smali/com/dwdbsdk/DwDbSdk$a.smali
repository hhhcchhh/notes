.class public Lcom/dwdbsdk/DwDbSdk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/DwDbSdk;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/DwDbSdk;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/DwDbSdk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/DwDbSdk$a;->a:Lcom/dwdbsdk/DwDbSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/dwdbsdk/Logcat/SdkLog;->zipLogFiles()V

    .line 2
    invoke-static {}, Lcom/dwdbsdk/Logcat/SdkLog;->createFile()V

    return-void
.end method
