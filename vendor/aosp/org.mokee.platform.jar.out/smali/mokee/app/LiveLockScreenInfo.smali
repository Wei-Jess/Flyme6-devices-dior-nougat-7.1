.class public Lmokee/app/LiveLockScreenInfo;
.super Ljava/lang/Object;
.source "LiveLockScreenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/LiveLockScreenInfo$1;,
        Lmokee/app/LiveLockScreenInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/app/LiveLockScreenInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2


# instance fields
.field public component:Landroid/content/ComponentName;

.field public priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lmokee/app/LiveLockScreenInfo$1;

    invoke-direct {v0}, Lmokee/app/LiveLockScreenInfo$1;-><init>()V

    .line 147
    sput-object v0, Lmokee/app/LiveLockScreenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lmokee/app/LiveLockScreenInfo;->priority:I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "priority"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    .line 79
    iput p2, p0, Lmokee/app/LiveLockScreenInfo;->priority:I

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v1

    .line 95
    .local v1, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v1}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v2

    .line 97
    .local v2, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmokee/app/LiveLockScreenInfo;->priority:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 99
    :goto_0
    iput-object v3, p0, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    .line 104
    invoke-virtual {v1}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 92
    return-void

    .line 101
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/app/LiveLockScreenInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/app/LiveLockScreenInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lmokee/app/LiveLockScreenInfo;->clone()Lmokee/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lmokee/app/LiveLockScreenInfo;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lmokee/app/LiveLockScreenInfo;

    invoke-direct {v0}, Lmokee/app/LiveLockScreenInfo;-><init>()V

    .line 133
    .local v0, "that":Lmokee/app/LiveLockScreenInfo;
    invoke-virtual {p0, v0}, Lmokee/app/LiveLockScreenInfo;->cloneInto(Lmokee/app/LiveLockScreenInfo;)V

    .line 134
    return-object v0
.end method

.method public cloneInto(Lmokee/app/LiveLockScreenInfo;)V
    .locals 1
    .param p1, "that"    # Lmokee/app/LiveLockScreenInfo;

    .prologue
    .line 143
    iget-object v0, p0, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p1, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    .line 144
    iget v0, p0, Lmokee/app/LiveLockScreenInfo;->priority:I

    iput v0, p1, Lmokee/app/LiveLockScreenInfo;->priority:I

    .line 142
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LiveLockScreenInfo: priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmokee/app/LiveLockScreenInfo;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    const-string/jumbo v1, ", component="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 117
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget v1, p0, Lmokee/app/LiveLockScreenInfo;->priority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v1, p0, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 113
    return-void

    .line 118
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method
