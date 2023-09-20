.class public Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;
.super Ljava/lang/Object;
.source "ScanArfcnBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bandwidth:I

.field dl_arfcn:I

.field eci:Ljava/lang/String;

.field mcc1:I

.field mcc2:I

.field mnc1:I

.field mnc2:I

.field pa:I

.field pci:I

.field pk:I

.field pri:I

.field rsrp:I

.field tac:Ljava/lang/String;

.field ul_arfcn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean$1;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean$1;-><init>()V

    sput-object v0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->tac:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->eci:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->ul_arfcn:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->dl_arfcn:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pci:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->rsrp:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pri:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pa:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pk:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc1:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc1:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc2:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc2:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->bandwidth:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIII)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->tac:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->eci:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->ul_arfcn:I

    .line 26
    iput p4, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->dl_arfcn:I

    .line 27
    iput p5, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pci:I

    .line 28
    iput p6, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->rsrp:I

    .line 29
    iput p7, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pri:I

    .line 30
    iput p8, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pa:I

    .line 31
    iput p9, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pk:I

    .line 32
    iput p10, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc1:I

    .line 33
    iput p11, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc2:I

    .line 34
    iput p12, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc1:I

    .line 35
    iput p13, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc2:I

    .line 36
    iput p14, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->bandwidth:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBandwidth()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->bandwidth:I

    return v0
.end method

.method public getDl_arfcn()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->dl_arfcn:I

    return v0
.end method

.method public getEci()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->eci:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc1()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc1:I

    return v0
.end method

.method public getMcc2()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc2:I

    return v0
.end method

.method public getMnc1()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc1:I

    return v0
.end method

.method public getMnc2()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc2:I

    return v0
.end method

.method public getPa()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pa:I

    return v0
.end method

.method public getPci()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pci:I

    return v0
.end method

.method public getPk()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pk:I

    return v0
.end method

.method public getPri()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pri:I

    return v0
.end method

.method public getRsrp()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->rsrp:I

    return v0
.end method

.method public getTac()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->tac:Ljava/lang/String;

    return-object v0
.end method

.method public getUl_arfcn()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->ul_arfcn:I

    return v0
.end method

.method public setBandwidth(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->bandwidth:I

    return-void
.end method

.method public setDl_arfcn(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->dl_arfcn:I

    return-void
.end method

.method public setEci(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->eci:Ljava/lang/String;

    return-void
.end method

.method public setMcc1(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc1:I

    return-void
.end method

.method public setMcc2(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc2:I

    return-void
.end method

.method public setMnc1(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc1:I

    return-void
.end method

.method public setMnc2(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc2:I

    return-void
.end method

.method public setPa(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pa:I

    return-void
.end method

.method public setPci(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pci:I

    return-void
.end method

.method public setPk(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pk:I

    return-void
.end method

.method public setPri(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pri:I

    return-void
.end method

.method public setRsrp(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->rsrp:I

    return-void
.end method

.method public setTac(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->tac:Ljava/lang/String;

    return-void
.end method

.method public setUl_arfcn(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->ul_arfcn:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 187
    iget-object p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->tac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->eci:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->ul_arfcn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->dl_arfcn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pci:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->rsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pri:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pa:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->pk:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mcc2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->mnc2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget p2, p0, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->bandwidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
