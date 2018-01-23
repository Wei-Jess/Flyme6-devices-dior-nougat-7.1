.class public Lorg/mokee/internal/mkparts/MKPartsPreference;
.super Lmokee/preference/RemotePreference;
.source "MKPartsPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MKPartsPreference"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPart:Lorg/mokee/internal/mkparts/PartInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/mokee/internal/mkparts/MKPartsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mokee/internal/mkparts/MKPartsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lmokee/preference/RemotePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    iput-object p1, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lorg/mokee/internal/mkparts/PartsList;->get(Landroid/content/Context;)Lorg/mokee/internal/mkparts/PartsList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mokee/internal/mkparts/PartsList;->getPartInfo(Ljava/lang/String;)Lorg/mokee/internal/mkparts/PartInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mPart:Lorg/mokee/internal/mkparts/PartInfo;

    .line 42
    iget-object v0, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mPart:Lorg/mokee/internal/mkparts/PartInfo;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Part not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-direct {p0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->updatePreference()V

    .line 47
    iget-object v0, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mPart:Lorg/mokee/internal/mkparts/PartInfo;

    invoke-virtual {v0}, Lorg/mokee/internal/mkparts/PartInfo;->getIntentForActivity()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->setIntent(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method private updatePreference()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->isAvailable()Z

    move-result v0

    iget-object v1, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mPart:Lorg/mokee/internal/mkparts/PartInfo;

    invoke-virtual {v1}, Lorg/mokee/internal/mkparts/PartInfo;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mPart:Lorg/mokee/internal/mkparts/PartInfo;

    invoke-virtual {v0}, Lorg/mokee/internal/mkparts/PartInfo;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->setAvailable(Z)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mPart:Lorg/mokee/internal/mkparts/PartInfo;

    invoke-virtual {v0}, Lorg/mokee/internal/mkparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mPart:Lorg/mokee/internal/mkparts/PartInfo;

    invoke-virtual {v0}, Lorg/mokee/internal/mkparts/PartInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method protected getRemoteKey(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "metaData"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRemoteUpdated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const-string/jumbo v1, ":mk:part"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string/jumbo v1, ":mk:part"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mokee/internal/mkparts/PartInfo;

    .line 62
    .local v0, "update":Lorg/mokee/internal/mkparts/PartInfo;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lorg/mokee/internal/mkparts/MKPartsPreference;->mPart:Lorg/mokee/internal/mkparts/PartInfo;

    invoke-virtual {v1, v0}, Lorg/mokee/internal/mkparts/PartInfo;->updateFrom(Lorg/mokee/internal/mkparts/PartInfo;)Z

    .line 64
    invoke-direct {p0}, Lorg/mokee/internal/mkparts/MKPartsPreference;->updatePreference()V

    .line 59
    .end local v0    # "update":Lorg/mokee/internal/mkparts/PartInfo;
    :cond_0
    return-void
.end method
