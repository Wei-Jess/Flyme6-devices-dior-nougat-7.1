.class public Lorg/mokee/platform/internal/display/PictureAdjustmentController;
.super Lorg/mokee/platform/internal/display/LiveDisplayFeature;
.source "PictureAdjustmentController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveDisplay-PAC"


# instance fields
.field private final mHardware:Lmokee/hardware/MKHardwareManager;

.field private final mHasDisplayModes:Z

.field private mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUsePictureAdjustment:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    .line 51
    invoke-static {p1}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v3

    iput-object v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 52
    iget-object v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHasDisplayModes:Z

    .line 54
    iget-object v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/high16 v4, 0x40000

    invoke-virtual {v3, v4}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v2

    .line 55
    .local v2, "usePA":Z
    if-eqz v2, :cond_0

    .line 56
    iget-object v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    iget-object v4, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v4}, Lmokee/hardware/MKHardwareManager;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 58
    const/4 v2, 0x0

    .line 68
    .end local v2    # "usePA":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 69
    iget-object v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 71
    :cond_1
    iput-boolean v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    .line 49
    return-void

    .line 60
    .restart local v2    # "usePA":Z
    :cond_2
    iget-object v3, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "range$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 61
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "usePA":Z
    goto :goto_0
.end method

.method private getPAForMode(I)Lmokee/hardware/HSIC;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 201
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->unpackPreference()Landroid/util/SparseArray;

    move-result-object v0

    .line 202
    .local v0, "prefs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/hardware/HSIC;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmokee/hardware/HSIC;

    return-object v1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lmokee/hardware/HSIC;

    move-result-object v1

    return-object v1
.end method

.method private packPreference(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lmokee/hardware/HSIC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "modes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/hardware/HSIC;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 233
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 234
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmokee/hardware/HSIC;

    .line 235
    .local v2, "m":Lmokee/hardware/HSIC;
    if-lez v0, :cond_0

    .line 236
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmokee/hardware/HSIC;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "id":I
    .end local v2    # "m":Lmokee/hardware/HSIC;
    :cond_1
    const-string/jumbo v4, "display_picture_adjustment"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private setPAForMode(ILmokee/hardware/HSIC;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "hsic"    # Lmokee/hardware/HSIC;

    .prologue
    .line 209
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->unpackPreference()Landroid/util/SparseArray;

    move-result-object v0

    .line 210
    .local v0, "prefs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/hardware/HSIC;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    invoke-direct {p0, v0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->packPreference(Landroid/util/SparseArray;)V

    .line 208
    return-void
.end method

.method private unpackPreference()Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lmokee/hardware/HSIC;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 215
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 217
    .local v4, "ret":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/hardware/HSIC;>;"
    const-string/jumbo v5, "display_picture_adjustment"

    invoke-virtual {p0, v5}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "pref":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 219
    const-string/jumbo v5, ","

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "byMode":[Ljava/lang/String;
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v0, v5

    .line 221
    .local v1, "mode":Ljava/lang/String;
    const-string/jumbo v8, ":"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "modePA":[Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 223
    aget-object v8, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Lmokee/hardware/HSIC;->unflattenFrom(Ljava/lang/String;)Lmokee/hardware/HSIC;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "byMode":[Ljava/lang/String;
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "modePA":[Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private updatePictureAdjustment()V
    .locals 4

    .prologue
    .line 95
    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getPictureAdjustment()Lmokee/hardware/HSIC;

    move-result-object v0

    .line 97
    .local v0, "hsic":Lmokee/hardware/HSIC;
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v1, v0}, Lmokee/hardware/MKHardwareManager;->setPictureAdjustment(Lmokee/hardware/HSIC;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string/jumbo v1, "LiveDisplay-PAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set picture adjustment! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmokee/hardware/HSIC;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "hsic":Lmokee/hardware/HSIC;
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 109
    const-string/jumbo v0, "PictureAdjustmentController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  adjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getPictureAdjustment()Lmokee/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  hueRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getHueRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  saturationRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getSaturationRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  intensityRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getIntensityRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  contrastRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getContrastRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  saturationThresholdRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  defaultAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lmokee/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    .line 124
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 126
    :cond_0
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    return v0
.end method

.method getContrastRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 145
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 146
    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 145
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method getDefaultPictureAdjustment()Lmokee/hardware/HSIC;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "hsic":Lmokee/hardware/HSIC;
    iget-boolean v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v2}, Lmokee/hardware/MKHardwareManager;->getDefaultPictureAdjustment()Lmokee/hardware/HSIC;

    move-result-object v0

    .line 159
    .end local v0    # "hsic":Lmokee/hardware/HSIC;
    :cond_0
    if-nez v0, :cond_1

    .line 160
    new-instance v0, Lmokee/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lmokee/hardware/HSIC;-><init>(FFFFF)V

    .line 162
    :cond_1
    return-object v0
.end method

.method getHueRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 130
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method getIntensityRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 141
    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 140
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method getPictureAdjustment()Lmokee/hardware/HSIC;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "hsic":Lmokee/hardware/HSIC;
    iget-boolean v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v2, :cond_1

    .line 168
    const/4 v7, 0x0

    .line 169
    .local v7, "modeID":I
    iget-boolean v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHasDisplayModes:Z

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v2}, Lmokee/hardware/MKHardwareManager;->getCurrentDisplayMode()Lmokee/hardware/DisplayMode;

    move-result-object v6

    .line 171
    .local v6, "mode":Lmokee/hardware/DisplayMode;
    if-eqz v6, :cond_0

    .line 172
    iget v7, v6, Lmokee/hardware/DisplayMode;->id:I

    .line 175
    .end local v6    # "mode":Lmokee/hardware/DisplayMode;
    :cond_0
    invoke-direct {p0, v7}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getPAForMode(I)Lmokee/hardware/HSIC;

    move-result-object v0

    .line 177
    .end local v0    # "hsic":Lmokee/hardware/HSIC;
    .end local v7    # "modeID":I
    :cond_1
    if-nez v0, :cond_2

    .line 178
    new-instance v0, Lmokee/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lmokee/hardware/HSIC;-><init>(FFFFF)V

    .line 180
    :cond_2
    return-object v0
.end method

.method getSaturationRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 136
    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 135
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method getSaturationThresholdRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 150
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 151
    iget-object v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 150
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSettingsChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->updatePictureAdjustment()V

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    .line 81
    const-string/jumbo v1, "display_picture_adjustment"

    invoke-static {v1}, Lmokee/providers/MKSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 80
    invoke-virtual {p0, v0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->registerSettings([Landroid/net/Uri;)V

    .line 75
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->updatePictureAdjustment()V

    .line 90
    return-void
.end method

.method setPictureAdjustment(Lmokee/hardware/HSIC;)Z
    .locals 3
    .param p1, "hsic"    # Lmokee/hardware/HSIC;

    .prologue
    .line 184
    iget-boolean v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "modeID":I
    iget-boolean v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHasDisplayModes:Z

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v2}, Lmokee/hardware/MKHardwareManager;->getCurrentDisplayMode()Lmokee/hardware/DisplayMode;

    move-result-object v0

    .line 188
    .local v0, "mode":Lmokee/hardware/DisplayMode;
    if-eqz v0, :cond_0

    .line 189
    iget v1, v0, Lmokee/hardware/DisplayMode;->id:I

    .line 192
    .end local v0    # "mode":Lmokee/hardware/DisplayMode;
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->setPAForMode(ILmokee/hardware/HSIC;)V

    .line 193
    const/4 v2, 0x1

    return v2

    .line 195
    .end local v1    # "modeID":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
