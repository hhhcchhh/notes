.class public Lcom/dwdbsdk/Bean/DW/DWProtocol$TraceType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Bean/DW/DWProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TraceType"
.end annotation


# static fields
.field public static final CATCH:I = 0x2

.field public static final CONTROL:I = 0x3

.field public static final LTE_TRACE:I = 0x6

.field public static final STARTCATCH:I = 0x5

.field public static final STARTTRACE:I = 0x4

.field public static final TRACE:I = 0x1


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Bean/DW/DWProtocol;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWProtocol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/DWProtocol$TraceType;->a:Lcom/dwdbsdk/Bean/DW/DWProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
