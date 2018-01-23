.class public final Lmokee/os/Concierge$ParcelInfo;
.super Ljava/lang/Object;
.source "Concierge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/os/Concierge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelInfo"
.end annotation


# instance fields
.field private mCreation:Z

.field private mParcel:Landroid/os/Parcel;

.field private mParcelableSize:I

.field private mParcelableVersion:I

.field private mSizePosition:I

.field private mStartPosition:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v0, p0, Lmokee/os/Concierge$ParcelInfo;->mCreation:Z

    .line 108
    iput-boolean v0, p0, Lmokee/os/Concierge$ParcelInfo;->mCreation:Z

    .line 109
    iput-object p1, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableVersion:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableSize:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lmokee/os/Concierge$ParcelInfo;->mStartPosition:I

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v2, p0, Lmokee/os/Concierge$ParcelInfo;->mCreation:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/os/Concierge$ParcelInfo;->mCreation:Z

    .line 117
    iput-object p1, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    .line 118
    iput p2, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableVersion:I

    .line 122
    iget-object v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableVersion:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lmokee/os/Concierge$ParcelInfo;->mSizePosition:I

    .line 127
    iget-object v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lmokee/os/Concierge$ParcelInfo;->mStartPosition:I

    .line 115
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    .prologue
    .line 143
    iget-boolean v0, p0, Lmokee/os/Concierge$ParcelInfo;->mCreation:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v1, p0, Lmokee/os/Concierge$ParcelInfo;->mStartPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableSize:I

    .line 146
    iget-object v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lmokee/os/Concierge$ParcelInfo;->mSizePosition:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 147
    iget-object v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableSize:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lmokee/os/Concierge$ParcelInfo;->mStartPosition:I

    iget v2, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 142
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lmokee/os/Concierge$ParcelInfo;->mStartPosition:I

    iget v2, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public getParcelVersion()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lmokee/os/Concierge$ParcelInfo;->mParcelableVersion:I

    return v0
.end method
