"use strict";

function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _reactRouterDom = require("react-router-dom");

var _reactHelmetAsync = require("react-helmet-async");

var _propTypes = _interopRequireDefault(require("prop-types"));

var _styles = require("@mui/material/styles");

var _material = require("@mui/material");

var _AuthLayout = _interopRequireDefault(require("../components/AuthLayout"));

var _Page = _interopRequireDefault(require("../components/Page"));

var _RegisterForm = _interopRequireDefault(require("../components/Register/RegisterForm"));

var _AuthSocial = _interopRequireDefault(require("../components/AuthSocial"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); Object.defineProperty(subClass, "prototype", { writable: false }); if (superClass) _setPrototypeOf(subClass, superClass); }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }

function _createSuper(Derived) { var hasNativeReflectConstruct = _isNativeReflectConstruct(); return function _createSuperInternal() { var Super = _getPrototypeOf(Derived), result; if (hasNativeReflectConstruct) { var NewTarget = _getPrototypeOf(this).constructor; result = Reflect.construct(Super, arguments, NewTarget); } else { result = Super.apply(this, arguments); } return _possibleConstructorReturn(this, result); }; }

function _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === "object" || typeof call === "function")) { return call; } else if (call !== void 0) { throw new TypeError("Derived constructors may only return object or undefined"); } return _assertThisInitialized(self); }

function _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return self; }

function _isNativeReflectConstruct() { if (typeof Reflect === "undefined" || !Reflect.construct) return false; if (Reflect.construct.sham) return false; if (typeof Proxy === "function") return true; try { Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {})); return true; } catch (e) { return false; } }

function _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

// ----------------------------------------------------------------------
var RootStyle = (0, _styles.styled)(_Page.default)(function (_ref) {
  var theme = _ref.theme;
  return _defineProperty({}, theme.breakpoints.up('md'), {
    display: 'flex'
  });
});
var SectionStyle = (0, _styles.styled)(_material.Card)(function (_ref3) {
  var theme = _ref3.theme;
  return {
    width: '100%',
    maxWidth: 464,
    display: 'flex',
    flexDirection: 'column',
    justifyContent: 'center',
    margin: theme.spacing(2, 0, 2, 2)
  };
});
var ContentStyle = (0, _styles.styled)('div')(function (_ref4) {
  var theme = _ref4.theme;
  return {
    maxWidth: 480,
    margin: 'auto',
    display: 'flex',
    minHeight: '100vh',
    flexDirection: 'column',
    justifyContent: 'center',
    padding: theme.spacing(12, 0)
  };
}); // ----------------------------------------------------------------------

function Register(props) {
  return /*#__PURE__*/React.createElement(_reactHelmetAsync.HelmetProvider, null, /*#__PURE__*/React.createElement(_reactRouterDom.BrowserRouter, null, /*#__PURE__*/React.createElement(RootStyle, {
    title: "Register | Coinbase"
  }, /*#__PURE__*/React.createElement(_AuthLayout.default, null, "Already have an account? \xA0", /*#__PURE__*/React.createElement(_material.Link, {
    underline: "none",
    variant: "subtitle2",
    onClick: function onClick() {
      props.changePage('Login');
    }
  }, "Login")), /*#__PURE__*/React.createElement(_material.Container, {
    sx: {
      m: -10
    }
  }, /*#__PURE__*/React.createElement(ContentStyle, null, /*#__PURE__*/React.createElement(_material.Box, {
    sx: {
      mb: 5,
      mt: 10
    }
  }, /*#__PURE__*/React.createElement(_material.Typography, {
    variant: "h4",
    gutterBottom: true
  }, "Get started absolutely free."), /*#__PURE__*/React.createElement(_material.Typography, {
    sx: {
      color: 'text.secondary'
    }
  }, "Free forever. No credit card needed.")), /*#__PURE__*/React.createElement(_AuthSocial.default, null), /*#__PURE__*/React.createElement(_RegisterForm.default, null), /*#__PURE__*/React.createElement(_material.Typography, {
    variant: "body2",
    align: "center",
    sx: {
      color: 'text.secondary',
      mt: 3
    }
  }, "By registering, I agree to Minimal\xA0", /*#__PURE__*/React.createElement(_material.Link, {
    underline: "always",
    color: "textPrimary"
  }, "Terms of Service"), "\xA0and\xA0", /*#__PURE__*/React.createElement(_material.Link, {
    underline: "always",
    color: "textPrimary"
  }, "Privacy Policy"), "."), /*#__PURE__*/React.createElement(_material.Typography, {
    variant: "body2",
    align: "center",
    sx: {
      mt: 3,
      display: {
        sm: 'none'
      }
    }
  }, "Already have an account?\xA0", /*#__PURE__*/React.createElement(_material.Link, {
    variant: "subtitle2",
    component: _reactRouterDom.Link,
    to: "login",
    underline: "hover"
  }, "Login")))))));
}

var RegisterPage = /*#__PURE__*/function (_React$Component) {
  _inherits(RegisterPage, _React$Component);

  var _super = _createSuper(RegisterPage);

  function RegisterPage() {
    _classCallCheck(this, RegisterPage);

    return _super.apply(this, arguments);
  }

  _createClass(RegisterPage, [{
    key: "render",
    value: function render() {
      return /*#__PURE__*/React.createElement(Register, {
        changePage: this.context.changePage
      });
    }
  }]);

  return RegisterPage;
}(React.Component);

exports.default = RegisterPage;

_defineProperty(RegisterPage, "contextTypes", {
  changePage: _propTypes.default.func //接收传递的方法

});