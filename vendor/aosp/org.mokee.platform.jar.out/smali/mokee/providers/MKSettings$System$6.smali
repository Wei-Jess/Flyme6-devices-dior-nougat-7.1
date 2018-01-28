.class final Lmokee/providers/MKSettings$System$6;
.super Ljava/lang/Object;
.source "MKSettings.java"

# interfaces
.implements Lmokee/providers/MKSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/providers/MKSettings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 12
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 2010
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2011
    return v10

    .line 2013
    :cond_0
    const-string/jumbo v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_6

    aget-object v2, v6, v4

    .line 2014
    .local v2, "line":Ljava/lang/String;
    const-string/jumbo v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2015
    .local v3, "mapping":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 2016
    return v5

    .line 2019
    :cond_1
    const/4 v1, -0x1

    .line 2021
    .local v1, "fingerId":I
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2026
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    .line 2027
    return v5

    .line 2022
    :catch_0
    move-exception v0

    .line 2023
    .local v0, "e":Ljava/lang/Exception;
    return v5

    .line 2030
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    aget-object v8, v3, v10

    const-string/jumbo v9, "cmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2033
    :cond_3
    aget-object v8, v3, v11

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-eq v8, v11, :cond_5

    .line 2034
    return v5

    .line 2030
    :cond_4
    const-string/jumbo v9, "shortcut"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2038
    return v5

    .line 2013
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2041
    .end local v1    # "fingerId":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "mapping":[Ljava/lang/String;
    :cond_6
    return v10
.end method
