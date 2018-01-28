.class public Lmokee/externalviews/ExternalViewProperties;
.super Ljava/lang/Object;
.source "ExternalViewProperties.java"


# instance fields
.field private final mDecorView:Landroid/view/View;

.field private mHeight:I

.field private mHitRect:Landroid/graphics/Rect;

.field private final mScreenCoords:[I

.field private final mView:Landroid/view/View;

.field private mVisible:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmokee/externalviews/ExternalViewProperties;->mScreenCoords:[I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmokee/externalviews/ExternalViewProperties;->mHitRect:Landroid/graphics/Rect;

    .line 40
    iput-object p1, p0, Lmokee/externalviews/ExternalViewProperties;->mView:Landroid/view/View;

    .line 41
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 42
    check-cast p2, Landroid/app/Activity;

    .end local p2    # "context":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmokee/externalviews/ExternalViewProperties;->mDecorView:Landroid/view/View;

    .line 39
    :goto_0
    return-void

    .line 44
    .restart local p2    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmokee/externalviews/ExternalViewProperties;->mDecorView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lmokee/externalviews/ExternalViewProperties;->mHeight:I

    return v0
.end method

.method public getHitRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProperties;->mHitRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lmokee/externalviews/ExternalViewProperties;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProperties;->mScreenCoords:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProperties;->mScreenCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public hasChanged()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 73
    iget v3, p0, Lmokee/externalviews/ExternalViewProperties;->mWidth:I

    .line 74
    .local v3, "previousWidth":I
    iget v2, p0, Lmokee/externalviews/ExternalViewProperties;->mHeight:I

    .line 75
    .local v2, "previousHeight":I
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    iput v9, p0, Lmokee/externalviews/ExternalViewProperties;->mWidth:I

    .line 76
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lmokee/externalviews/ExternalViewProperties;->mHeight:I

    .line 78
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mScreenCoords:[I

    aget v4, v9, v8

    .line 79
    .local v4, "previousX":I
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mScreenCoords:[I

    aget v5, v9, v7

    .line 80
    .local v5, "previousY":I
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mView:Landroid/view/View;

    iget-object v10, p0, Lmokee/externalviews/ExternalViewProperties;->mScreenCoords:[I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 81
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mScreenCoords:[I

    aget v0, v9, v8

    .line 82
    .local v0, "newX":I
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mScreenCoords:[I

    aget v1, v9, v7

    .line 84
    .local v1, "newY":I
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 85
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mDecorView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 86
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mDecorView:Landroid/view/View;

    iget-object v10, p0, Lmokee/externalviews/ExternalViewProperties;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 88
    :cond_0
    iget-boolean v6, p0, Lmokee/externalviews/ExternalViewProperties;->mVisible:Z

    .line 89
    .local v6, "wasVisible":Z
    iget-object v9, p0, Lmokee/externalviews/ExternalViewProperties;->mView:Landroid/view/View;

    iget-object v10, p0, Lmokee/externalviews/ExternalViewProperties;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    iput-boolean v9, p0, Lmokee/externalviews/ExternalViewProperties;->mVisible:Z

    .line 92
    if-ne v4, v0, :cond_1

    if-eq v5, v1, :cond_2

    :cond_1
    :goto_0
    return v7

    .line 93
    :cond_2
    iget v9, p0, Lmokee/externalviews/ExternalViewProperties;->mWidth:I

    if-ne v3, v9, :cond_1

    iget v9, p0, Lmokee/externalviews/ExternalViewProperties;->mHeight:I

    if-ne v2, v9, :cond_1

    .line 94
    iget-boolean v9, p0, Lmokee/externalviews/ExternalViewProperties;->mVisible:Z

    if-ne v9, v6, :cond_1

    move v7, v8

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lmokee/externalviews/ExternalViewProperties;->mVisible:Z

    return v0
.end method
