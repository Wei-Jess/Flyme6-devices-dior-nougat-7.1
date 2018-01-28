.class final Lmokee/providers/MKSettings$DelimitedListValidator;
.super Ljava/lang/Object;
.source "MKSettings.java"

# interfaces
.implements Lmokee/providers/MKSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/providers/MKSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelimitedListValidator"
.end annotation


# instance fields
.field private final mAllowEmptyList:Z

.field private final mDelimiter:Ljava/lang/String;

.field private final mValidValueSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "validValues"    # [Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "allowEmptyList"    # Z

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmokee/providers/MKSettings$DelimitedListValidator;->mValidValueSet:Landroid/util/ArraySet;

    .line 397
    iput-object p2, p0, Lmokee/providers/MKSettings$DelimitedListValidator;->mDelimiter:Ljava/lang/String;

    .line 398
    iput-boolean p3, p0, Lmokee/providers/MKSettings$DelimitedListValidator;->mAllowEmptyList:Z

    .line 395
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 403
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 404
    .local v2, "values":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 405
    iget-object v5, p0, Lmokee/providers/MKSettings$DelimitedListValidator;->mDelimiter:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "array":[Ljava/lang/String;
    array-length v6, v0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 407
    .local v1, "item":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 406
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 414
    iget-object v5, p0, Lmokee/providers/MKSettings$DelimitedListValidator;->mValidValueSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 417
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    return v3

    :cond_2
    move v3, v4

    goto :goto_2

    .line 418
    :cond_3
    iget-boolean v5, p0, Lmokee/providers/MKSettings$DelimitedListValidator;->mAllowEmptyList:Z

    if-eqz v5, :cond_4

    .line 419
    return v3

    .line 422
    :cond_4
    return v4
.end method
