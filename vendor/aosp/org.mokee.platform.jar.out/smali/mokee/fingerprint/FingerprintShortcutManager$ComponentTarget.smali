.class public Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;
.super Lmokee/fingerprint/FingerprintShortcutManager$Target;
.source "FingerprintShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/fingerprint/FingerprintShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentTarget"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 220
    invoke-direct {p0}, Lmokee/fingerprint/FingerprintShortcutManager$Target;-><init>()V

    .line 221
    iput-object p1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;->component:Landroid/content/ComponentName;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;-><init>(Landroid/content/ComponentName;)V

    .line 224
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cmp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
