.class public Lmokee/hardware/TouchscreenGesture;
.super Ljava/lang/Object;
.source "TouchscreenGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/hardware/TouchscreenGesture$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/hardware/TouchscreenGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public final keycode:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lmokee/hardware/TouchscreenGesture$1;

    invoke-direct {v0}, Lmokee/hardware/TouchscreenGesture$1;-><init>()V

    .line 67
    sput-object v0, Lmokee/hardware/TouchscreenGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "keycode"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lmokee/hardware/TouchscreenGesture;->id:I

    .line 50
    iput-object p2, p0, Lmokee/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    .line 51
    iput p3, p0, Lmokee/hardware/TouchscreenGesture;->keycode:I

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget v0, p0, Lmokee/hardware/TouchscreenGesture;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lmokee/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lmokee/hardware/TouchscreenGesture;->keycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
