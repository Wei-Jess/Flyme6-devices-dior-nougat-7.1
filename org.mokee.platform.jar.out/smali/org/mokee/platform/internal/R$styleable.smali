.class public final Lorg/mokee/platform/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LiveLockScreen:[I

.field public static final LiveLockScreen_settingsActivity:I = 0x0

.field public static final LiveLockScreen_type:I = 0x1

.field public static final mk_Searchable:[I

.field public static final mk_Searchable_xmlRes:I = 0x0

.field public static final mk_SelfRemovingPreference:[I

.field public static final mk_SelfRemovingPreference_minSummaryLines:I = 0x7

.field public static final mk_SelfRemovingPreference_replacesKey:I = 0x6

.field public static final mk_SelfRemovingPreference_requiresAction:I = 0x5

.field public static final mk_SelfRemovingPreference_requiresConfig:I = 0x2

.field public static final mk_SelfRemovingPreference_requiresFeature:I = 0x1

.field public static final mk_SelfRemovingPreference_requiresOwner:I = 0x4

.field public static final mk_SelfRemovingPreference_requiresPackage:I = 0x0

.field public static final mk_SelfRemovingPreference_requiresProperty:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 762
    const/high16 v0, 0x3f080000    # 0.53125f

    const v1, 0x3f080001

    .line 761
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/mokee/platform/internal/R$styleable;->LiveLockScreen:[I

    .line 786
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 787
    const v1, 0x3f010007

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 786
    sput-object v0, Lorg/mokee/platform/internal/R$styleable;->mk_Searchable:[I

    .line 823
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mokee/platform/internal/R$styleable;->mk_SelfRemovingPreference:[I

    .line 748
    return-void

    .line 823
    :array_0
    .array-data 4
        0x3f010002
        0x3f010003
        0x3f010004
        0x3f010005
        0x3f010006
        0x3f010008
        0x3f010009
        0x3f01000a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
