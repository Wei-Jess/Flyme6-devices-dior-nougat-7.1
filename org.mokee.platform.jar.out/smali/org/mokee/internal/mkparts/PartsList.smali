.class public Lorg/mokee/internal/mkparts/PartsList;
.super Ljava/lang/Object;
.source "PartsList.java"


# static fields
.field private static final DEBUG:Z

.field public static final EXTRA_PART:Ljava/lang/String; = ":mk:part"

.field public static final MKPARTS_ACTIVITY:Landroid/content/ComponentName;

.field public static final MKPARTS_PACKAGE:Ljava/lang/String; = "org.mokee.mkparts"

.field public static final PARTS_ACTION_PREFIX:Ljava/lang/String; = "org.mokee.mkparts.parts"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/mokee/internal/mkparts/PartsList;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mokee/internal/mkparts/PartInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-class v0, Lorg/mokee/internal/mkparts/PartsList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mokee/internal/mkparts/PartsList;->TAG:Ljava/lang/String;

    .line 53
    sget-object v0, Lorg/mokee/internal/mkparts/PartsList;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/mokee/internal/mkparts/PartsList;->DEBUG:Z

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    .line 60
    const-string/jumbo v1, "org.mokee.mkparts"

    const-string/jumbo v2, "org.mokee.mkparts.PartsActivity"

    .line 59
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/mokee/internal/mkparts/PartsList;->MKPARTS_ACTIVITY:Landroid/content/ComponentName;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mokee/internal/mkparts/PartsList;->sInstanceLock:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lorg/mokee/internal/mkparts/PartsList;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lorg/mokee/internal/mkparts/PartsList;->loadParts()V

    .line 71
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/mokee/internal/mkparts/PartsList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-object v1, Lorg/mokee/internal/mkparts/PartsList;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lorg/mokee/internal/mkparts/PartsList;->sInstance:Lorg/mokee/internal/mkparts/PartsList;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/mokee/internal/mkparts/PartsList;

    invoke-direct {v0, p0}, Lorg/mokee/internal/mkparts/PartsList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/mokee/internal/mkparts/PartsList;->sInstance:Lorg/mokee/internal/mkparts/PartsList;

    .line 81
    :cond_0
    sget-object v0, Lorg/mokee/internal/mkparts/PartsList;->sInstance:Lorg/mokee/internal/mkparts/PartsList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadParts()V
    .locals 8

    .prologue
    .line 86
    iget-object v5, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    monitor-enter v5

    .line 87
    :try_start_0
    iget-object v4, p0, Lorg/mokee/internal/mkparts/PartsList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 89
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    const-string/jumbo v4, "org.mokee.mkparts"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 90
    .local v2, "r":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    monitor-exit v5

    .line 91
    return-void

    .line 93
    :cond_0
    :try_start_2
    const-string/jumbo v4, "parts_catalog"

    const-string/jumbo v6, "xml"

    const-string/jumbo v7, "org.mokee.mkparts"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 94
    .local v3, "resId":I
    if-lez v3, :cond_1

    .line 95
    iget-object v4, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v4}, Lorg/mokee/internal/mkparts/PartsList;->loadPartsFromResourceLocked(Landroid/content/res/Resources;ILjava/util/Map;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    :cond_1
    :goto_0
    monitor-exit v5

    .line 85
    return-void

    .line 86
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 97
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private loadPartsFromResourceLocked(Landroid/content/res/Resources;ILjava/util/Map;)V
    .locals 15
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mokee/internal/mkparts/PartInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "target":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/mokee/internal/mkparts/PartInfo;>;"
    const/4 v8, 0x0

    .line 131
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 132
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 135
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    .line 136
    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 140
    :cond_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "nodeName":Ljava/lang/String;
    const-string/jumbo v12, "parts-catalog"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 142
    new-instance v12, Ljava/lang/RuntimeException;

    .line 143
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "XML document must start with <parts-catalog> tag; found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 144
    const-string/jumbo v14, " at "

    .line 143
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 144
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    .line 143
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 142
    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "type":I
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error parsing catalog"

    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v12

    .line 210
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 209
    :cond_2
    throw v12

    .line 147
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "type":I
    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 148
    .local v7, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    .line 149
    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v7, :cond_e

    .line 150
    :cond_5
    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    .line 154
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 155
    const-string/jumbo v12, "part"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 156
    sget-object v12, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 158
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 159
    .local v5, "key":Ljava/lang/String;
    const/4 v12, 0x6

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    .line 160
    .local v10, "tv":Landroid/util/TypedValue;
    if-eqz v10, :cond_6

    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    .line 161
    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    if-eqz v12, :cond_7

    .line 162
    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    :goto_1
    if-nez v5, :cond_8

    .line 168
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Attribute \'key\' is required"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "outerDepth":I
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "tv":Landroid/util/TypedValue;
    .end local v11    # "type":I
    :catch_1
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error parsing catalog"

    invoke-direct {v12, v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v7    # "outerDepth":I
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "tv":Landroid/util/TypedValue;
    .restart local v11    # "type":I
    :cond_7
    :try_start_4
    iget-object v12, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "key":Ljava/lang/String;
    goto :goto_1

    .line 171
    .end local v5    # "key":Ljava/lang/String;
    :cond_8
    new-instance v4, Lorg/mokee/internal/mkparts/PartInfo;

    invoke-direct {v4, v5}, Lorg/mokee/internal/mkparts/PartInfo;-><init>(Ljava/lang/String;)V

    .line 173
    .local v4, "info":Lorg/mokee/internal/mkparts/PartInfo;
    const/4 v12, 0x4

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    .line 174
    if-eqz v10, :cond_9

    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_9

    .line 175
    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    if-eqz v12, :cond_b

    .line 176
    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/mokee/internal/mkparts/PartInfo;->setTitle(Ljava/lang/String;)V

    .line 182
    :cond_9
    :goto_2
    const/4 v12, 0x7

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    .line 183
    if-eqz v10, :cond_a

    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_a

    .line 184
    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    if-eqz v12, :cond_c

    .line 185
    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/mokee/internal/mkparts/PartInfo;->setSummary(Ljava/lang/String;)V

    .line 191
    :cond_a
    :goto_3
    const/16 v12, 0xd

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/mokee/internal/mkparts/PartInfo;->setFragmentClass(Ljava/lang/String;)V

    .line 192
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/mokee/internal/mkparts/PartInfo;->setIconRes(I)V

    .line 194
    sget-object v12, Lmokee/platform/R$styleable;->mk_Searchable:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 195
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/mokee/internal/mkparts/PartInfo;->setXmlRes(I)V

    .line 197
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    move-object/from16 v0, p3

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 178
    :cond_b
    iget-object v12, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/mokee/internal/mkparts/PartInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_c
    iget-object v12, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/mokee/internal/mkparts/PartInfo;->setSummary(Ljava/lang/String;)V

    goto :goto_3

    .line 202
    .end local v4    # "info":Lorg/mokee/internal/mkparts/PartInfo;
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "tv":Landroid/util/TypedValue;
    :cond_d
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 210
    :cond_e
    if-eqz v8, :cond_f

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 127
    :cond_f
    return-void
.end method


# virtual methods
.method public getPartInfo(Ljava/lang/String;)Lorg/mokee/internal/mkparts/PartInfo;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mokee/internal/mkparts/PartInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getPartInfoForClass(Ljava/lang/String;)Lorg/mokee/internal/mkparts/PartInfo;
    .locals 5
    .param p1, "clazz"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v3, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    monitor-enter v3

    .line 117
    :try_start_0
    iget-object v2, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mokee/internal/mkparts/PartInfo;

    .line 118
    .local v0, "info":Lorg/mokee/internal/mkparts/PartInfo;
    invoke-virtual {v0}, Lorg/mokee/internal/mkparts/PartInfo;->getFragmentClass()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/mokee/internal/mkparts/PartInfo;->getFragmentClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 119
    return-object v0

    .end local v0    # "info":Lorg/mokee/internal/mkparts/PartInfo;
    :cond_1
    monitor-exit v3

    .line 122
    return-object v4

    .line 116
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getPartsList()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/mokee/internal/mkparts/PartsList;->mParts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
