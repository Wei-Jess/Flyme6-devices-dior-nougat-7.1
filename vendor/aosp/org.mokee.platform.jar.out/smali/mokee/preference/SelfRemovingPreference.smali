.class public Lmokee/preference/SelfRemovingPreference;
.super Landroid/support/v7/preference/Preference;
.source "SelfRemovingPreference.java"


# instance fields
.field private final mConstraints:Lmokee/preference/ConstraintsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmokee/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    .line 44
    invoke-static {p1, v0, v1}, Lmokee/preference/ConstraintsHelper;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lmokee/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmokee/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    new-instance v0, Lmokee/preference/ConstraintsHelper;

    invoke-direct {v0, p1, p2, p0}, Lmokee/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lmokee/preference/SelfRemovingPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    .line 34
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmokee/preference/SelfRemovingPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    invoke-virtual {v0}, Lmokee/preference/ConstraintsHelper;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 55
    iget-object v0, p0, Lmokee/preference/SelfRemovingPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lmokee/preference/ConstraintsHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 53
    return-void
.end method

.method public setAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lmokee/preference/SelfRemovingPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lmokee/preference/ConstraintsHelper;->setAvailable(Z)V

    .line 58
    return-void
.end method
