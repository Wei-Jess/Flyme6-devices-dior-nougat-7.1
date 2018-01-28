.class public Lmokee/preference/SelfRemovingSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SelfRemovingSwitchPreference.java"


# instance fields
.field private final mConstraints:Lmokee/preference/ConstraintsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lmokee/preference/ConstraintsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lmokee/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lmokee/preference/SelfRemovingSwitchPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lmokee/preference/ConstraintsHelper;

    invoke-direct {v0, p1, p2, p0}, Lmokee/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lmokee/preference/SelfRemovingSwitchPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lmokee/preference/ConstraintsHelper;

    invoke-direct {v0, p1, p2, p0}, Lmokee/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lmokee/preference/SelfRemovingSwitchPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    .line 32
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmokee/preference/SelfRemovingSwitchPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    invoke-virtual {v0}, Lmokee/preference/ConstraintsHelper;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 50
    iget-object v0, p0, Lmokee/preference/SelfRemovingSwitchPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lmokee/preference/ConstraintsHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 48
    return-void
.end method

.method public setAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lmokee/preference/SelfRemovingSwitchPreference;->mConstraints:Lmokee/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lmokee/preference/ConstraintsHelper;->setAvailable(Z)V

    .line 53
    return-void
.end method
