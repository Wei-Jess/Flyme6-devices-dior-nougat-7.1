.class public final Lmokee/os/Concierge;
.super Ljava/lang/Object;
.source "Concierge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/os/Concierge$ParcelInfo;
    }
.end annotation


# static fields
.field public static final PARCELABLE_VERSION:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 91
    new-instance v0, Lmokee/os/Concierge$ParcelInfo;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lmokee/os/Concierge$ParcelInfo;-><init>(Landroid/os/Parcel;I)V

    return-object v0
.end method

.method public static receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 79
    new-instance v0, Lmokee/os/Concierge$ParcelInfo;

    invoke-direct {v0, p0}, Lmokee/os/Concierge$ParcelInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
