.class final Lmokee/power/PerformanceProfile$1;
.super Ljava/lang/Object;
.source "PerformanceProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/power/PerformanceProfile;
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
        "Lmokee/power/PerformanceProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lmokee/power/PerformanceProfile$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/power/PerformanceProfile;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/power/PerformanceProfile;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 140
    new-instance v0, Lmokee/power/PerformanceProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/power/PerformanceProfile;-><init>(Landroid/os/Parcel;Lmokee/power/PerformanceProfile;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lmokee/power/PerformanceProfile$1;->newArray(I)[Lmokee/power/PerformanceProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/power/PerformanceProfile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 145
    new-array v0, p1, [Lmokee/power/PerformanceProfile;

    return-object v0
.end method
