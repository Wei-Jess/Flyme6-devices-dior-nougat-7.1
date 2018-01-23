.class public Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;
.super Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;
.source "FingerprintShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/fingerprint/FingerprintShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentTargetImpl"
.end annotation


# instance fields
.field private mActivity:Landroid/content/pm/ActivityInfo;

.field final synthetic this$0:Lmokee/fingerprint/FingerprintShortcutManager;


# direct methods
.method private constructor <init>(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lmokee/fingerprint/FingerprintShortcutManager;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    .line 261
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;-><init>(Landroid/content/ComponentName;Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;)V

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/fingerprint/FingerprintShortcutManager;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;-><init>(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->mActivity:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->component:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lmokee/fingerprint/FingerprintShortcutManager;->-wrap0(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->mActivity:Landroid/content/pm/ActivityInfo;

    .line 275
    :cond_0
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->mActivity:Landroid/content/pm/ActivityInfo;

    invoke-static {v0, v1}, Lmokee/fingerprint/FingerprintShortcutManager;->-wrap2(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->mActivity:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->component:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lmokee/fingerprint/FingerprintShortcutManager;->-wrap0(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->mActivity:Landroid/content/pm/ActivityInfo;

    .line 283
    :cond_0
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->mActivity:Landroid/content/pm/ActivityInfo;

    invoke-static {v0, v1}, Lmokee/fingerprint/FingerprintShortcutManager;->-wrap4(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method startAsUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    invoke-static {v0}, Lmokee/fingerprint/FingerprintShortcutManager;->-get0(Lmokee/fingerprint/FingerprintShortcutManager;)Landroid/content/pm/LauncherApps;

    move-result-object v0

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 265
    return-void
.end method
