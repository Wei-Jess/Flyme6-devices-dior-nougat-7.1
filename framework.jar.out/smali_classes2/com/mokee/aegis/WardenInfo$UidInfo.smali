.class public Lcom/mokee/aegis/WardenInfo$UidInfo;
.super Ljava/lang/Object;
.source "WardenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/WardenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mokee/aegis/WardenInfo$UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mokee/aegis/e;

    invoke-direct {v0}, Lcom/mokee/aegis/e;-><init>()V

    sput-object v0, Lcom/mokee/aegis/WardenInfo$UidInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mokee/aegis/WardenInfo$UidInfo;->a:I

    iput p2, p0, Lcom/mokee/aegis/WardenInfo$UidInfo;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/mokee/aegis/WardenInfo$UidInfo;->b:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/mokee/aegis/WardenInfo$UidInfo;->a:I

    return v0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/mokee/aegis/WardenInfo$UidInfo;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/mokee/aegis/WardenInfo$UidInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/mokee/aegis/WardenInfo$UidInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
