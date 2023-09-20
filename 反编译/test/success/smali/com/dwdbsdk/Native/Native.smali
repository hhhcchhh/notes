.class public Lcom/dwdbsdk/Native/Native;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "bs_service"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native EnableExOTG(I)Z
.end method

.method public static native EnableHOST(I)Z
.end method

.method public static native EnableNrUsb(I)Z
.end method

.method public static native EnableOTG(I)Z
.end method

.method public static native EnableTypec(I)Z
.end method

.method public static native LcClose()Z
.end method

.method public static native LcInit()Z
.end method

.method public static native SetCardTo5G(I)Z
.end method

.method public static native SetModulePwr(II)Z
.end method

.method public static native SetStatusLed0(I)Z
.end method

.method public static native SetStatusLed1(I)Z
.end method

.method public static native jniUartClose()I
.end method

.method public static native jniUartDataRead(I[I)I
.end method

.method public static native jniUartDataWrite(I[II)I
.end method

.method public static native jniUartInit(I)I
.end method
