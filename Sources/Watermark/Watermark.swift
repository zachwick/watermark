// Watermark.swift
// This file is part of Watermark
// Copyright 2020 zach wick <zach@zachwick.com>
// Licensed under the MIT license
//

import SwiftUI

@available(iOS 13.0, *)
struct Watermark: ViewModifier {
  var text: String
  var alignment: Alignment
  var opacity: Double
  var foreground: Color
  var background: Color

  func body(content: Content) -> some View {
    ZStack(alignment: alignment) {
      content
      Text(text)
        .font(.caption)
        .foregroundColor(foreground)
        .padding(5)
        .background(background)
        .opacity(opacity)
    }
  }
}

@available(iOS 13.0, *)
public extension View {
  // MARK: - Default Options
  func watermarked(with text: String) -> some View {
    self.modifier(Watermark(text: text, alignment: .bottomTrailing, opacity: 1.0, foreground: .white, background: .black))
  }

  // MARK: - One non-default option
  func watermarked(with text: String, alignment: Alignment) -> some View {
    self.modifier(Watermark(text: text, alignment: alignment, opacity: 1.0, foreground: .white, background: .black))
  }

  func watermarked(with text: String, opacity: Double) -> some View {
    self.modifier(Watermark(text: text, alignment: .bottomTrailing, opacity: opacity, foreground: .white, background: .black))
  }

  func watermarked(with text: String, foreground: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: .bottomTrailing, opacity: 1.0, foreground: foreground, background: .black))
  }

  func watermarked(with text: String, background: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: .bottomTrailing, opacity: 1.0, foreground: .white, background: background))
  }

  // MARK: - Two non-default options
  func watermarked(with text: String, alignment: Alignment, opacity: Double) -> some View {
    self.modifier(Watermark(text: text, alignment: alignment, opacity: opacity, foreground: .white, background: .black))
  }

  func watermarked(with text: String, alignment: Alignment, foreground: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: alignment, opacity: 1.0, foreground: foreground, background: .black))
  }

  func watermarked(with text: String, alignment: Alignment, background: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: alignment, opacity: 1.0, foreground: .white, background: background))
  }

  func watermarked(with text: String, opacity: Double, foreground: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: .bottomTrailing, opacity: opacity, foreground: foreground, background: .black))
  }

  func watermarked(with text: String, opacity: Double, background: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: .bottomTrailing, opacity: opacity, foreground: .white, background: background))
  }

  func watermarked(with text: String, foreground: Color, background: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: .bottomTrailing, opacity: 1.0, foreground: foreground, background: background))
  }

  // MARK: - Three non-default options
  func watermarked(with text: String, alignment: Alignment, opacity: Double, foreground: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: alignment, opacity: opacity, foreground: foreground, background: .black))
  }

  func watermarked(with text: String, alignment: Alignment, opacity: Double, background: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: alignment, opacity: opacity, foreground: .white, background: background))
  }

  func watermarked(with text: String, alignment: Alignment, foreground: Color, background: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: alignment, opacity: 1.0, foreground: foreground, background: background))
  }

  func watermarked(with text: String, opacity: Double, foreground: Color, background: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: .bottomTrailing, opacity: opacity, foreground: foreground, background: background))
  }

  // MARK: - Four non-default options
  func watermarked(with text: String, alignment: Alignment, opacity: Double, foreground: Color, background: Color) -> some View {
    self.modifier(Watermark(text: text, alignment: alignment, opacity: opacity, foreground: foreground, background: background))
  }
}
