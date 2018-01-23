.class public Lorg/mokee/internal/mkparts/PartInfo;
.super Ljava/lang/Object;
.source "PartInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/internal/mkparts/PartInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/mokee/internal/mkparts/PartInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailable:Z

.field private mFragmentClass:Ljava/lang/String;

.field private mIconRes:I

.field private final mName:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mXmlRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/mokee/internal/mkparts/PartInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mokee/internal/mkparts/PartInfo;->TAG:Ljava/lang/String;

    .line 188
    new-instance v0, Lorg/mokee/internal/mkparts/PartInfo$1;

    invoke-direct {v0}, Lorg/mokee/internal/mkparts/PartInfo$1;-><init>()V

    sput-object v0, Lorg/mokee/internal/mkparts/PartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mAvailable:Z

    .line 44
    iput v3, p0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    .line 57
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 58
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 60
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mokee/internal/mkparts/PartInfo;->mName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mokee/internal/mkparts/PartInfo;->mTitle:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mokee/internal/mkparts/PartInfo;->mSummary:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mokee/internal/mkparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lorg/mokee/internal/mkparts/PartInfo;->mIconRes:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mAvailable:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    .line 56
    return-void

    :cond_0
    move v2, v3

    .line 65
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0}, Lorg/mokee/internal/mkparts/PartInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mAvailable:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    .line 47
    iput-object p1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mTitle:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lorg/mokee/internal/mkparts/PartInfo;->mSummary:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 165
    if-nez p1, :cond_0

    .line 166
    return v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/mokee/internal/mkparts/PartInfo;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 169
    return v1

    :cond_1
    move-object v0, p1

    .line 171
    check-cast v0, Lorg/mokee/internal/mkparts/PartInfo;

    .line 172
    .local v0, "o":Lorg/mokee/internal/mkparts/PartInfo;
    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mName:Ljava/lang/String;

    iget-object v3, v0, Lorg/mokee/internal/mkparts/PartInfo;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mTitle:Ljava/lang/String;

    iget-object v3, v0, Lorg/mokee/internal/mkparts/PartInfo;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mSummary:Ljava/lang/String;

    iget-object v3, v0, Lorg/mokee/internal/mkparts/PartInfo;->mSummary:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    iget-object v3, v0, Lorg/mokee/internal/mkparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 174
    iget v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mIconRes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lorg/mokee/internal/mkparts/PartInfo;->mIconRes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 174
    iget-boolean v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Lorg/mokee/internal/mkparts/PartInfo;->mAvailable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 175
    iget v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 172
    :cond_2
    return v1
.end method

.method public getAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "org.mokee.mkparts.parts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mIconRes:I

    return v0
.end method

.method public getIntentForActivity()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/mokee/internal/mkparts/PartInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lorg/mokee/internal/mkparts/PartsList;->MKPARTS_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlRes()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/mokee/internal/mkparts/PartInfo;->mAvailable:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mAvailable:Z

    .line 109
    return-void
.end method

.method public setFragmentClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragmentClass"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setIconRes(I)V
    .locals 0
    .param p1, "iconRes"    # I

    .prologue
    .line 102
    iput p1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mIconRes:I

    .line 101
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mSummary:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mTitle:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setXmlRes(I)V
    .locals 0
    .param p1, "xmlRes"    # I

    .prologue
    .line 118
    iput p1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    const-string/jumbo v0, "PartInfo=[ name=%s title=%s summary=%s fragment=%s xmlRes=%x ]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mTitle:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mSummary:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 139
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrom(Lorg/mokee/internal/mkparts/PartInfo;)Z
    .locals 2
    .param p1, "other"    # Lorg/mokee/internal/mkparts/PartInfo;

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    return v1

    .line 125
    :cond_0
    invoke-virtual {p1, p0}, Lorg/mokee/internal/mkparts/PartInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    return v1

    .line 128
    :cond_1
    invoke-virtual {p1}, Lorg/mokee/internal/mkparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/PartInfo;->setTitle(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lorg/mokee/internal/mkparts/PartInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/PartInfo;->setSummary(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lorg/mokee/internal/mkparts/PartInfo;->getFragmentClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/PartInfo;->setFragmentClass(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lorg/mokee/internal/mkparts/PartInfo;->getIconRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/PartInfo;->setIconRes(I)V

    .line 132
    invoke-virtual {p1}, Lorg/mokee/internal/mkparts/PartInfo;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/PartInfo;->setAvailable(Z)V

    .line 133
    invoke-virtual {p1}, Lorg/mokee/internal/mkparts/PartInfo;->getXmlRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/PartInfo;->setXmlRes(I)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 150
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 152
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mIconRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-boolean v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mAvailable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v1, p0, Lorg/mokee/internal/mkparts/PartInfo;->mXmlRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 149
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
