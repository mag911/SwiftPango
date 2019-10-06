import CGLib
import CPango
import GLib
import GLibObject

// MARK: - EngineLang Class

/// The `EngineLangProtocol` protocol exposes the methods and properties of an underlying `PangoEngineLang` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EngineLang`.
/// Alternatively, use `EngineLangRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoEngineLang` class is implemented by engines that
/// customize the rendering-system independent part of the
/// Pango pipeline for a particular script or language. For
/// instance, a custom `PangoEngineLang` could be provided for
/// Thai to implement the dictionary-based word boundary
/// lookups needed for that language.
public protocol EngineLangProtocol: EngineProtocol {
    /// Untyped pointer to the underlying `PangoEngineLang` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoEngineLang` instance.
    var engine_lang_ptr: UnsafeMutablePointer<PangoEngineLang> { get }
}

/// The `EngineLangRef` type acts as a lightweight Swift reference to an underlying `PangoEngineLang` instance.
/// It exposes methods that can operate on this data type through `EngineLangProtocol` conformance.
/// Use `EngineLangRef` only as an `unowned` reference to an existing `PangoEngineLang` instance.
///
/// The `PangoEngineLang` class is implemented by engines that
/// customize the rendering-system independent part of the
/// Pango pipeline for a particular script or language. For
/// instance, a custom `PangoEngineLang` could be provided for
/// Thai to implement the dictionary-based word boundary
/// lookups needed for that language.
public struct EngineLangRef: EngineLangProtocol {
    /// Untyped pointer to the underlying `PangoEngineLang` instance.
    /// For type-safe access, use the generated, typed pointer `engine_lang_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EngineLangRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoEngineLang>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EngineLangProtocol`
    init<T: EngineLangProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EngineLang` type acts as a reference-counted owner of an underlying `PangoEngineLang` instance.
/// It provides the methods that can operate on this data type through `EngineLangProtocol` conformance.
/// Use `EngineLang` as a strong reference or owner of a `PangoEngineLang` instance.
///
/// The `PangoEngineLang` class is implemented by engines that
/// customize the rendering-system independent part of the
/// Pango pipeline for a particular script or language. For
/// instance, a custom `PangoEngineLang` could be provided for
/// Thai to implement the dictionary-based word boundary
/// lookups needed for that language.
open class EngineLang: Engine, EngineLangProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EngineLang` instance.
    public init(_ op: UnsafeMutablePointer<PangoEngineLang>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EngineLangProtocol`
    /// Will retain `PangoEngineLang`.
    public convenience init<T: EngineLangProtocol>(_ other: T) {
        self.init(cast(other.engine_lang_ptr))
        g_object_ref(cast(engine_lang_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoEngineLang.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoEngineLang.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoEngineLang.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoEngineLang>(opaquePointer))
    }



}

// MARK: - no EngineLang properties

public enum EngineLangSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension EngineLangProtocol {
    /// Connect a `EngineLangSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EngineLangSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(engine_lang_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension EngineLangProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineLang` instance.
    var engine_lang_ptr: UnsafeMutablePointer<PangoEngineLang> { return ptr.assumingMemoryBound(to: PangoEngineLang.self) }

}



// MARK: - EngineShape Class

/// The `EngineShapeProtocol` protocol exposes the methods and properties of an underlying `PangoEngineShape` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EngineShape`.
/// Alternatively, use `EngineShapeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoEngineShape` class is implemented by engines that
/// customize the rendering-system dependent part of the
/// Pango pipeline for a particular script or language.
/// A `PangoEngineShape` implementation is then specific to both
/// a particular rendering system or group of rendering systems
/// and to a particular script. For instance, there is one
/// `PangoEngineShape` implementation to handle shaping Arabic
/// for Fontconfig-based backends.
public protocol EngineShapeProtocol: EngineProtocol {
    /// Untyped pointer to the underlying `PangoEngineShape` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoEngineShape` instance.
    var engine_shape_ptr: UnsafeMutablePointer<PangoEngineShape> { get }
}

/// The `EngineShapeRef` type acts as a lightweight Swift reference to an underlying `PangoEngineShape` instance.
/// It exposes methods that can operate on this data type through `EngineShapeProtocol` conformance.
/// Use `EngineShapeRef` only as an `unowned` reference to an existing `PangoEngineShape` instance.
///
/// The `PangoEngineShape` class is implemented by engines that
/// customize the rendering-system dependent part of the
/// Pango pipeline for a particular script or language.
/// A `PangoEngineShape` implementation is then specific to both
/// a particular rendering system or group of rendering systems
/// and to a particular script. For instance, there is one
/// `PangoEngineShape` implementation to handle shaping Arabic
/// for Fontconfig-based backends.
public struct EngineShapeRef: EngineShapeProtocol {
    /// Untyped pointer to the underlying `PangoEngineShape` instance.
    /// For type-safe access, use the generated, typed pointer `engine_shape_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EngineShapeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoEngineShape>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EngineShapeProtocol`
    init<T: EngineShapeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EngineShape` type acts as a reference-counted owner of an underlying `PangoEngineShape` instance.
/// It provides the methods that can operate on this data type through `EngineShapeProtocol` conformance.
/// Use `EngineShape` as a strong reference or owner of a `PangoEngineShape` instance.
///
/// The `PangoEngineShape` class is implemented by engines that
/// customize the rendering-system dependent part of the
/// Pango pipeline for a particular script or language.
/// A `PangoEngineShape` implementation is then specific to both
/// a particular rendering system or group of rendering systems
/// and to a particular script. For instance, there is one
/// `PangoEngineShape` implementation to handle shaping Arabic
/// for Fontconfig-based backends.
open class EngineShape: Engine, EngineShapeProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EngineShape` instance.
    public init(_ op: UnsafeMutablePointer<PangoEngineShape>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EngineShapeProtocol`
    /// Will retain `PangoEngineShape`.
    public convenience init<T: EngineShapeProtocol>(_ other: T) {
        self.init(cast(other.engine_shape_ptr))
        g_object_ref(cast(engine_shape_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoEngineShape.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoEngineShape.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoEngineShape.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoEngineShape>(opaquePointer))
    }



}

// MARK: - no EngineShape properties

public enum EngineShapeSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension EngineShapeProtocol {
    /// Connect a `EngineShapeSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EngineShapeSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(engine_shape_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension EngineShapeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineShape` instance.
    var engine_shape_ptr: UnsafeMutablePointer<PangoEngineShape> { return ptr.assumingMemoryBound(to: PangoEngineShape.self) }

}



// MARK: - Font Class

/// The `FontProtocol` protocol exposes the methods and properties of an underlying `PangoFont` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Font`.
/// Alternatively, use `FontRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoFont` structure is used to represent
/// a font in a rendering-system-independent matter.
/// To create an implementation of a `PangoFont`,
/// the rendering-system specific code should allocate
/// a larger structure that contains a nested
/// `PangoFont`, fill in the <structfield>klass</structfield> member of
/// the nested `PangoFont` with a pointer to
/// a appropriate `PangoFontClass`, then call
/// `pango_font_init()` on the structure.
/// 
/// The `PangoFont` structure contains one member
/// which the implementation fills in.
public protocol FontProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoFont` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFont` instance.
    var font_ptr: UnsafeMutablePointer<PangoFont> { get }
}

/// The `FontRef` type acts as a lightweight Swift reference to an underlying `PangoFont` instance.
/// It exposes methods that can operate on this data type through `FontProtocol` conformance.
/// Use `FontRef` only as an `unowned` reference to an existing `PangoFont` instance.
///
/// The `PangoFont` structure is used to represent
/// a font in a rendering-system-independent matter.
/// To create an implementation of a `PangoFont`,
/// the rendering-system specific code should allocate
/// a larger structure that contains a nested
/// `PangoFont`, fill in the <structfield>klass</structfield> member of
/// the nested `PangoFont` with a pointer to
/// a appropriate `PangoFontClass`, then call
/// `pango_font_init()` on the structure.
/// 
/// The `PangoFont` structure contains one member
/// which the implementation fills in.
public struct FontRef: FontProtocol {
    /// Untyped pointer to the underlying `PangoFont` instance.
    /// For type-safe access, use the generated, typed pointer `font_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFont>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontProtocol`
    init<T: FontProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Font` type acts as a reference-counted owner of an underlying `PangoFont` instance.
/// It provides the methods that can operate on this data type through `FontProtocol` conformance.
/// Use `Font` as a strong reference or owner of a `PangoFont` instance.
///
/// The `PangoFont` structure is used to represent
/// a font in a rendering-system-independent matter.
/// To create an implementation of a `PangoFont`,
/// the rendering-system specific code should allocate
/// a larger structure that contains a nested
/// `PangoFont`, fill in the <structfield>klass</structfield> member of
/// the nested `PangoFont` with a pointer to
/// a appropriate `PangoFontClass`, then call
/// `pango_font_init()` on the structure.
/// 
/// The `PangoFont` structure contains one member
/// which the implementation fills in.
open class Font: Object, FontProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Font` instance.
    public init(_ op: UnsafeMutablePointer<PangoFont>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FontProtocol`
    /// Will retain `PangoFont`.
    public convenience init<T: FontProtocol>(_ other: T) {
        self.init(cast(other.font_ptr))
        g_object_ref(cast(font_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFont.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFont.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFont.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFont>(opaquePointer))
    }



}

// MARK: - no Font properties

public enum FontSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension FontProtocol {
    /// Connect a `FontSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FontSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(font_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension FontProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFont` instance.
    var font_ptr: UnsafeMutablePointer<PangoFont> { return ptr.assumingMemoryBound(to: PangoFont.self) }

    /// Returns a description of the font, with font size set in points.
    /// Use `pango_font_describe_with_absolute_size()` if you want the font
    /// size in device units.
    func describe() -> UnsafeMutablePointer<PangoFontDescription>! {
        let rv = pango_font_describe(cast(font_ptr))
        return cast(rv)
    }

    /// Returns a description of the font, with absolute font size set
    /// (in device units). Use `pango_font_describe()` if you want the font
    /// size in points.
    func describeWithAbsoluteSize() -> UnsafeMutablePointer<PangoFontDescription>! {
        let rv = pango_font_describe_with_absolute_size(cast(font_ptr))
        return cast(rv)
    }

    /// Finds the best matching shaper for a font for a particular
    /// language tag and character point.
    ///
    /// **find_shaper is deprecated:**
    /// Shape engines are no longer used
    @available(*, deprecated) func findShaper(language: LanguageProtocol, ch: UInt32) -> UnsafeMutablePointer<PangoEngineShape>! {
        let rv = pango_font_find_shaper(cast(font_ptr), cast(language.ptr), guint32(ch))
        return cast(rv)
    }

    /// Computes the coverage map for a given font and language tag.
    func getCoverage(language: LanguageProtocol) -> UnsafeMutablePointer<PangoCoverage>! {
        let rv = pango_font_get_coverage(cast(font_ptr), cast(language.ptr))
        return cast(rv)
    }

    /// Obtain the OpenType features that are provided by the font.
    /// These are passed to the rendering system, together with features
    /// that have been explicitly set via attributes.
    /// 
    /// Note that this does not include OpenType features which the
    /// rendering system enables by default.
    func get(features: UnsafeMutablePointer<hb_feature_t>, len: CUnsignedInt, numFeatures num_features: UnsafeMutablePointer<CUnsignedInt>) {
        pango_font_get_features(cast(font_ptr), cast(features), guint(len), cast(num_features))
    
    }

    /// Gets the font map for which the font was created.
    /// 
    /// Note that the font maintains a <firstterm>weak</firstterm> reference
    /// to the font map, so if all references to font map are dropped, the font
    /// map will be finalized even if there are fonts created with the font
    /// map that are still alive.  In that case this function will return `nil`.
    /// It is the responsibility of the user to ensure that the font map is kept
    /// alive.  In most uses this is not an issue as a `PangoContext` holds
    /// a reference to the font map.
    func getFontMap() -> UnsafeMutablePointer<PangoFontMap>! {
        let rv = pango_font_get_font_map(cast(font_ptr))
        return cast(rv)
    }

    /// Gets the logical and ink extents of a glyph within a font. The
    /// coordinate system for each rectangle has its origin at the
    /// base line and horizontal origin of the character with increasing
    /// coordinates extending to the right and down. The macros `PANGO_ASCENT()`,
    /// `PANGO_DESCENT()`, `PANGO_LBEARING()`, and `PANGO_RBEARING()` can be used to convert
    /// from the extents rectangle to more traditional font metrics. The units
    /// of the rectangles are in 1/PANGO_SCALE of a device unit.
    /// 
    /// If `font` is `nil`, this function gracefully sets some sane values in the
    /// output variables and returns.
    func getGlyphExtents(glyph: Glyph, inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_font_get_glyph_extents(cast(font_ptr), glyph, cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Get a hb_font_t object backing this font.
    /// 
    /// Note that the objects returned by this function
    /// are cached and immutable. If you need to make
    /// changes to the hb_font_t, use `hb_font_create_sub_font()`.
    func getHbFont() -> UnsafeMutablePointer<hb_font_t>! {
        let rv = pango_font_get_hb_font(cast(font_ptr))
        return cast(rv)
    }

    /// Gets overall metric information for a font. Since the metrics may be
    /// substantially different for different scripts, a language tag can
    /// be provided to indicate that the metrics should be retrieved that
    /// correspond to the `script(s)` used by that language.
    /// 
    /// If `font` is `nil`, this function gracefully sets some sane values in the
    /// output variables and returns.
    func getMetrics(language: LanguageProtocol) -> UnsafeMutablePointer<PangoFontMetrics>! {
        let rv = pango_font_get_metrics(cast(font_ptr), cast(language.ptr))
        return cast(rv)
    }

    /// Returns whether the font provides a glyph for this character.
    /// 
    /// Returns `true` if `font` can render `wc`
    func hasChar(wc: gunichar) -> Bool {
        let rv = pango_font_has_char(cast(font_ptr), wc)
        return Bool(rv != 0)
    }
    /// Gets the font map for which the font was created.
    /// 
    /// Note that the font maintains a <firstterm>weak</firstterm> reference
    /// to the font map, so if all references to font map are dropped, the font
    /// map will be finalized even if there are fonts created with the font
    /// map that are still alive.  In that case this function will return `nil`.
    /// It is the responsibility of the user to ensure that the font map is kept
    /// alive.  In most uses this is not an issue as a `PangoContext` holds
    /// a reference to the font map.
    var fontMap: UnsafeMutablePointer<PangoFontMap>! {
        /// Gets the font map for which the font was created.
        /// 
        /// Note that the font maintains a <firstterm>weak</firstterm> reference
        /// to the font map, so if all references to font map are dropped, the font
        /// map will be finalized even if there are fonts created with the font
        /// map that are still alive.  In that case this function will return `nil`.
        /// It is the responsibility of the user to ensure that the font map is kept
        /// alive.  In most uses this is not an issue as a `PangoContext` holds
        /// a reference to the font map.
        get {
            let rv = pango_font_get_font_map(cast(font_ptr))
            return cast(rv)
        }
    }

    /// Get a hb_font_t object backing this font.
    /// 
    /// Note that the objects returned by this function
    /// are cached and immutable. If you need to make
    /// changes to the hb_font_t, use `hb_font_create_sub_font()`.
    var hbFont: UnsafeMutablePointer<hb_font_t>! {
        /// Get a hb_font_t object backing this font.
        /// 
        /// Note that the objects returned by this function
        /// are cached and immutable. If you need to make
        /// changes to the hb_font_t, use `hb_font_create_sub_font()`.
        get {
            let rv = pango_font_get_hb_font(cast(font_ptr))
            return cast(rv)
        }
    }
}



