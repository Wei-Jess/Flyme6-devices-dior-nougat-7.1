.class final Lmokee/app/Profile$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/Profile;
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
        "Lmokee/app/Profile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lmokee/app/Profile$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/app/Profile;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/app/Profile;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 370
    new-instance v0, Lmokee/app/Profile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/app/Profile;-><init>(Landroid/os/Parcel;Lmokee/app/Profile;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lmokee/app/Profile$1;->newArray(I)[Lmokee/app/Profile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/app/Profile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 375
    new-array v0, p1, [Lmokee/app/Profile;

    return-object v0
.end method
