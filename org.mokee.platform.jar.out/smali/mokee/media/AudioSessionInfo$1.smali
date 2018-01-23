.class final Lmokee/media/AudioSessionInfo$1;
.super Ljava/lang/Object;
.source "AudioSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/media/AudioSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmokee/media/AudioSessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lmokee/media/AudioSessionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/media/AudioSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/media/AudioSessionInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 167
    new-instance v0, Lmokee/media/AudioSessionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/media/AudioSessionInfo;-><init>(Landroid/os/Parcel;Lmokee/media/AudioSessionInfo;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lmokee/media/AudioSessionInfo$1;->newArray(I)[Lmokee/media/AudioSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/media/AudioSessionInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 172
    new-array v0, p1, [Lmokee/media/AudioSessionInfo;

    return-object v0
.end method
